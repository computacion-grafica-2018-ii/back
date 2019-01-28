class QuotationProductsController < ApplicationController
  before_action :set_quotation_product, only: [:show, :update, :destroy]

  # GET /quotation_products
  def index
    @quotation_products = QuotationProduct.all

    render json: @quotation_products
  end

  # GET /quotation_products/1
  def show
    render json: @quotation_product
  end

  # POST /quotation_products
  def create
    @quotation_product = QuotationProduct.new(quotation_product_params)

    if @quotation_product.save
      render json: @quotation_product, status: :created, location: @quotation_product
    else
      render json: @quotation_product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quotation_products/1
  def update
    if @quotation_product.update(quotation_product_params)
      render json: @quotation_product
    else
      render json: @quotation_product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quotation_products/1
  def destroy
    @quotation_product.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quotation_product
      @quotation_product = QuotationProduct.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quotation_product_params
      params.require(:quotation_product).permit(:product_id, :quotation_id)
    end
end
