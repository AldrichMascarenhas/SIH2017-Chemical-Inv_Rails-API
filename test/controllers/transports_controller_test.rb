require 'test_helper'

class TransportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transport = transports(:one)
  end

  test "should get index" do
    get transports_url, as: :json
    assert_response :success
  end

  test "should create transport" do
    assert_difference('Transport.count') do
      post transports_url, params: { transport: { logistic_id: @transport.logistic_id } }, as: :json
    end

    assert_response 201
  end

  test "should show transport" do
    get transport_url(@transport), as: :json
    assert_response :success
  end

  test "should update transport" do
    patch transport_url(@transport), params: { transport: { logistic_id: @transport.logistic_id } }, as: :json
    assert_response 200
  end

  test "should destroy transport" do
    assert_difference('Transport.count', -1) do
      delete transport_url(@transport), as: :json
    end

    assert_response 204
  end
end
