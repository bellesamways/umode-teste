require 'test_helper'

class FabricsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fabric = fabrics(:one)
  end

  test "should get index" do
    get fabrics_url
    assert_response :success
  end

  test "should get new" do
    get new_fabric_url
    assert_response :success
  end

  test "should create fabric" do
    assert_difference('Fabric.count') do
      post fabrics_url, params: { fabric: { name: @fabric.name, observation: @fabric.observation, reference: @fabric.reference } }
    end

    assert_redirected_to fabric_url(Fabric.last)
  end

  test "should show fabric" do
    get fabric_url(@fabric)
    assert_response :success
  end

  test "should get edit" do
    get edit_fabric_url(@fabric)
    assert_response :success
  end

  test "should update fabric" do
    patch fabric_url(@fabric), params: { fabric: { name: @fabric.name, observation: @fabric.observation, reference: @fabric.reference } }
    assert_redirected_to fabric_url(@fabric)
  end

  test "should destroy fabric" do
    assert_difference('Fabric.count', -1) do
      delete fabric_url(@fabric)
    end

    assert_redirected_to fabrics_url
  end
end
