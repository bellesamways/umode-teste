require 'test_helper'

class FabricVariantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fabric_variant = fabric_variants(:one)
  end

  test "should get index" do
    get fabric_variants_url
    assert_response :success
  end

  test "should get new" do
    get new_fabric_variant_url
    assert_response :success
  end

  test "should create fabric_variant" do
    assert_difference('FabricVariant.count') do
      post fabric_variants_url, params: { fabric_variant: { composition: @fabric_variant.composition, fabric_id: @fabric_variant.fabric_id, grammage: @fabric_variant.grammage, name: @fabric_variant.name, observation: @fabric_variant.observation, reference: @fabric_variant.reference, width: @fabric_variant.width } }
    end

    assert_redirected_to fabric_variant_url(FabricVariant.last)
  end

  test "should show fabric_variant" do
    get fabric_variant_url(@fabric_variant)
    assert_response :success
  end

  test "should get edit" do
    get edit_fabric_variant_url(@fabric_variant)
    assert_response :success
  end

  test "should update fabric_variant" do
    patch fabric_variant_url(@fabric_variant), params: { fabric_variant: { composition: @fabric_variant.composition, fabric_id: @fabric_variant.fabric_id, grammage: @fabric_variant.grammage, name: @fabric_variant.name, observation: @fabric_variant.observation, reference: @fabric_variant.reference, width: @fabric_variant.width } }
    assert_redirected_to fabric_variant_url(@fabric_variant)
  end

  test "should destroy fabric_variant" do
    assert_difference('FabricVariant.count', -1) do
      delete fabric_variant_url(@fabric_variant)
    end

    assert_redirected_to fabric_variants_url
  end
end
