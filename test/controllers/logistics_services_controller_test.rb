require 'test_helper'

class LogisticsServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @logistics_service = logistics_services(:one)
  end

  test "should get index" do
    get logistics_services_url, as: :json
    assert_response :success
  end

  test "should create logistics_service" do
    assert_difference('LogisticsService.count') do
      post logistics_services_url, params: { logistics_service: { logistic_id: @logistics_service.logistic_id } }, as: :json
    end

    assert_response 201
  end

  test "should show logistics_service" do
    get logistics_service_url(@logistics_service), as: :json
    assert_response :success
  end

  test "should update logistics_service" do
    patch logistics_service_url(@logistics_service), params: { logistics_service: { logistic_id: @logistics_service.logistic_id } }, as: :json
    assert_response 200
  end

  test "should destroy logistics_service" do
    assert_difference('LogisticsService.count', -1) do
      delete logistics_service_url(@logistics_service), as: :json
    end

    assert_response 204
  end
end
