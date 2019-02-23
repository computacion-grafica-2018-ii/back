class QuotationsController < ApplicationController
  before_action :set_quotation, only: [:show, :update, :destroy]
  require 'writeexcel'

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
    productProperties = JSON.parse product.properties.to_json
    specifications = params[ :specifications ]

    @quotation = Quotation.new( )
    @quotation.user_id = params[ :user_id ] 
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
      worksheet.write( row, col + 1, specifications[parameter['name'] ] )
      worksheet.write( row, col + 2, parameter['units'] )
      row += 1
    end
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

    #Call Inventor
    puts "Creating system call to Inventor"
    t = Thread.new {
      inventorExe = File.join("C:", "Program Files", "Autodesk", "Inventor 2019", "Bin", "Inventor.exe")
      puts "Process spawned"
      p specifications['cotizacion']
      pid = spawn "#{inventorExe}", "#{assemblyFilePath}"
      while !File.exists? product.assemblyPath + "/cotizacion" + (specifications['cotizacion']).to_s + "/stop.txt" do
        # w8 for process execution
      end
      Process.kill( "KILL", pid )
      puts "Process killed successfully"
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
