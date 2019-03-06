class QuotationsController < ApplicationController
  before_action :set_quotation, only: [:show, :update, :destroy]
  require 'writeexcel'
  require 'twilio-ruby'

  # GET /quotations
  def index
    @quotations = Quotation.all

    render json: @quotations
  end

  # GET /quotations/1
  def show
    render json: @quotation
  end

  # POST /quotations
  def create
    params = quotation_params
    product = Product.find( params[ :product_id ] )
    productProperties = JSON.parse product.properties
    specifications = params[ :specifications ]

    @quotation = Quotation.new( )

    user = User.where(email: params[ :email ]).first

    if user
       @quotation.user_id = user.id   
    else
      user = User.new
      user.name = params[ :name ]
      user.email = params[ :email ]
      user.phone = params[ :phone ]
      user.password = "1234"
      user.save!
      @quotation.user_id = user.id 
    end
    
    @quotation.quantity = params[ :quantity ] 
    @quotation.delivery_date = Time.now + (2*7*24*60*60) #two weeks
    @quotation.status = 0
    @quotation.save

    @quotationProduct = QuotationProduct.new( )
    @quotationProduct.product_id = params[ :product_id ]
    @quotationProduct.quotation_id = @quotation.id
    @quotationProduct.specs = specifications
    @quotationProduct.save

    assemblyFilePath = product.assemblyPath + "/" + product.assemblyFile

    #Write excel
    row, col = 0, 0
    workbook = WriteExcel.new( product.assemblyPath + "/" + product.excelFile )
    worksheet  = workbook.add_worksheet
    productProperties[ 'columns' ].each do |label|
      worksheet.write( row, col, label )
      col += 1
    end
    col = 0
    row += 1
    productProperties[ 'params' ].each do |parameter|      
      worksheet.write( row, col, parameter['name'] )
      if( parameter['formula'] != '' )
        worksheet.write( row, col + 1, Stock.where(code: parameter['formula']).first.price )
      else
        worksheet.write( row, col + 1, specifications[parameter['name']])
      end      
      worksheet.write( row, col + 2, parameter['units'] )
      row += 1
    end
    worksheet.write( row, 0, 'cotizacion' )
    worksheet.write( row, 1,  @quotation.id )
    worksheet.write( row, 2, 'ul' )
    workbook.close

    #Write quotation excel
    labels = ["id","name","email","password_digest","role","address","phone","organization","created_at","updated_at","cotización"]
    row, col = 0, 0
    workbook = WriteExcel.new( product.assemblyPath + "/" + "export.xls" )
    worksheet  = workbook.add_worksheet
    labels.each do |label|
      worksheet.write( row, col, label )
      col += 1
    end
    col = 0
    row += 1

    worksheet.write( row, 0, user.id )
    worksheet.write( row, 1,  user.name )
    worksheet.write( row, 2, user.email )
    worksheet.write( row, 3, 'cotizacion' )
    worksheet.write( row, 4,  1 )
    worksheet.write( row, 5, 'Calle 125 # 45b - 18' )
    worksheet.write( row, 6, '3059566521' )
    worksheet.write( row, 7,  'Universidad Nacional' )
    worksheet.write( row, 8, '2019-02-12 03:06:09 UTC' )
    worksheet.write( row, 9, '2019-02-12 03:06:09 UTC' )
    worksheet.write( row, 10,  @quotation.id )

    workbook.close

    if @quotation.save
      if @quotationProduct.save
        render json: { :success => "Cotización creada exitosamente"}, status: :created
      else
        render json: @quotationProduct.errors, status: :unprocessable_entity
      end
    else
      render json: @quotation.errors, status: :unprocessable_entity
    end

    puts "-------id de cotizacion------"
    puts @quotation.id
    puts "-------fin------"
    

    #Call Inventor
    puts "Creating system call to Inventor"
    t = Thread.new {
      inventorExe = File.join("C:", "Program Files", "Autodesk", "Inventor 2019", "Bin", "Inventor.exe")
      puts "Process spawned"
      pid = spawn "#{inventorExe}", "#{assemblyFilePath}"
      while !File.exists? product.assemblyPath + "/cotizacion" + (@quotation.id).to_s + "/stop.txt" do
        # w8 for process execution
      end
      Process.kill( "KILL", pid )
      puts "Process killed successfully"

      excelExe = File.join("C:", "Program Files (x86)", "Microsoft Office", "root", "Office16","EXCEL.exe")
      quotationApp = File.join(product.assemblyPath, "Prueba_06_02.xlsm")
      
      puts "Process spawned quotation"
      pid = spawn "#{excelExe}", "#{quotationApp}"
      while !File.exists? product.assemblyPath + "/cotizacion" + (@quotation.id).to_s + "/COTIZACION.pdf" do
        # w8 for process execution
      end
      Process.kill( "KILL", pid )
      puts "Process killed successfully - quotation"

      QuotationMailer.send_quotation( user, product.assemblyPath + "/cotizacion" + (@quotation.id).to_s ).deliver_now

      account_sid = 'AC2328e461ef4598fa53ddc3c248ab0e49'
      auth_token = '0ab1b525f0ad3a30d7a2d8391e2b3a92'
      client = Twilio::REST::Client.new(account_sid, auth_token)

      from = '+12242617112' # Your Twilio number
      to = "+57#{params[ :phone ]}" # Your mobile phone number

      client.messages.create(
      from: from,
      to: to,
      body: "Estimado #{user.name} su cotización fue enviada a su correo."
      )

    }

    

  end

  # PATCH/PUT /quotations/1
  def update
    if @quotation.update(quotation_params)
      render json: @quotation
    else
      render json: @quotation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quotations/1
  def destroy
    @quotation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quotation
      @quotation = Quotation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quotation_params
      params.require(:quotation)
    end
end
