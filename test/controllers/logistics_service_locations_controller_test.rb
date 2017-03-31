require 'test_helper'

class LogisticsServiceLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @logistics_service_location = logistics_service_locations(:one)
  end

  test "should get index" do
    get logistics_service_locations_url, as: :json
    assert_response :success
  end

  test "should create logistics_service_location" do
    assert_difference('LogisticsServiceLocation.count') do
      post logistics_service_locations_url, params: { logistics_service_location: { logistics_service_id: @logistics_service_location.logistics_service_id } }, as: :json
    end

    assert_response 201
  end

  test "should show logistics_service_location" do
    get logistics_service_location_url(@logistics_service_location), as: :json
    assert_response :success
  end

  test "should update logistics_service_location" do
    patch logistics_service_location_url(@logistics_service_location), params: { logistics_service_location: { logistics_service_id: @logistics_service_location.logistics_service_id } }, as: :json
    assert_response 200
  end

  test "should destroy logistics_service_location" do
    assert_difference('LogisticsServiceLocation.count', -1) do
      delete logistics_service_location_url(@logistics_service_location), as: :json
    end

    assert_response 204
  end
end
