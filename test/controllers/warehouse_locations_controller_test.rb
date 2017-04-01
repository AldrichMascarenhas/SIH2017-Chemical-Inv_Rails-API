require 'test_helper'

class WarehouseLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @warehouse_location = warehouse_locations(:one)
  end

  test "should get index" do
    get warehouse_locations_url, as: :json
    assert_response :success
  end

  test "should create warehouse_location" do
    assert_difference('WarehouseLocation.count') do
      post warehouse_locations_url, params: { warehouse_location: { warehouse_id: @warehouse_location.warehouse_id } }, as: :json
    end

    assert_response 201
  end

  test "should show warehouse_location" do
    get warehouse_location_url(@warehouse_location), as: :json
    assert_response :success
  end

  test "should update warehouse_location" do
    patch warehouse_location_url(@warehouse_location), params: { warehouse_location: { warehouse_id: @warehouse_location.warehouse_id } }, as: :json
    assert_response 200
  end

  test "should destroy warehouse_location" do
    assert_difference('WarehouseLocation.count', -1) do
      delete warehouse_location_url(@warehouse_location), as: :json
    end

    assert_response 204
  end
end
