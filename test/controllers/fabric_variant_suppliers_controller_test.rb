require 'test_helper'

class FabricVariantSuppliersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fabric_variant_supplier = fabric_variant_suppliers(:one)
  end

  test "should get index" do
    get fabric_variant_suppliers_url
    assert_response :success
  end

  test "should get new" do
    get new_fabric_variant_supplier_url
    assert_response :success
  end

  test "should create fabric_variant_supplier" do
    assert_difference('FabricVariantSupplier.count') do
      post fabric_variant_suppliers_url, params: { fabric_variant_supplier: { fabric_variant_id: @fabric_variant_supplier.fabric_variant_id, min_purchase: @fabric_variant_supplier.min_purchase, price_cents: @fabric_variant_supplier.price_cents, price_currency: @fabric_variant_supplier.price_currency, price_unit: @fabric_variant_supplier.price_unit } }
    end

    assert_redirected_to fabric_variant_supplier_url(FabricVariantSupplier.last)
  end

  test "should show fabric_variant_supplier" do
    get fabric_variant_supplier_url(@fabric_variant_supplier)
    assert_response :success
  end

  test "should get edit" do
    get edit_fabric_variant_supplier_url(@fabric_variant_supplier)
    assert_response :success
  end

  test "should update fabric_variant_supplier" do
    patch fabric_variant_supplier_url(@fabric_variant_supplier), params: { fabric_variant_supplier: { fabric_variant_id: @fabric_variant_supplier.fabric_variant_id, min_purchase: @fabric_variant_supplier.min_purchase, price_cents: @fabric_variant_supplier.price_cents, price_currency: @fabric_variant_supplier.price_currency, price_unit: @fabric_variant_supplier.price_unit } }
    assert_redirected_to fabric_variant_supplier_url(@fabric_variant_supplier)
  end

  test "should destroy fabric_variant_supplier" do
    assert_difference('FabricVariantSupplier.count', -1) do
      delete fabric_variant_supplier_url(@fabric_variant_supplier)
    end

    assert_redirected_to fabric_variant_suppliers_url
  end
end
