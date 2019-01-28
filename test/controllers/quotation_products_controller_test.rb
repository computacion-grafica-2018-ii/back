require 'test_helper'

class QuotationProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quotation_product = quotation_products(:one)
  end

  test "should get index" do
    get quotation_products_url, as: :json
    assert_response :success
  end

  test "should create quotation_product" do
    assert_difference('QuotationProduct.count') do
      post quotation_products_url, params: { quotation_product: { product_id: @quotation_product.product_id, quotation_id: @quotation_product.quotation_id } }, as: :json
    end

    assert_response 201
  end

  test "should show quotation_product" do
    get quotation_product_url(@quotation_product), as: :json
    assert_response :success
  end

  test "should update quotation_product" do
    patch quotation_product_url(@quotation_product), params: { quotation_product: { product_id: @quotation_product.product_id, quotation_id: @quotation_product.quotation_id } }, as: :json
    assert_response 200
  end

  test "should destroy quotation_product" do
    assert_difference('QuotationProduct.count', -1) do
      delete quotation_product_url(@quotation_product), as: :json
    end

    assert_response 204
  end
end
