require 'test_helper'

class ProducerLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @producer_location = producer_locations(:one)
  end

  test "should get index" do
    get producer_locations_url, as: :json
    assert_response :success
  end

  test "should create producer_location" do
    assert_difference('ProducerLocation.count') do
      post producer_locations_url, params: { producer_location: { producer_id: @producer_location.producer_id } }, as: :json
    end

    assert_response 201
  end

  test "should show producer_location" do
    get producer_location_url(@producer_location), as: :json
    assert_response :success
  end

  test "should update producer_location" do
    patch producer_location_url(@producer_location), params: { producer_location: { producer_id: @producer_location.producer_id } }, as: :json
    assert_response 200
  end

  test "should destroy producer_location" do
    assert_difference('ProducerLocation.count', -1) do
      delete producer_location_url(@producer_location), as: :json
    end

    assert_response 204
  end
end
