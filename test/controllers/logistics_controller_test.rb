require 'test_helper'

class LogisticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @logistic = logistics(:one)
  end

  test "should get index" do
    get logistics_url, as: :json
    assert_response :success
  end

  test "should create logistic" do
    assert_difference('Logistic.count') do
      post logistics_url, params: { logistic: { user_id: @logistic.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show logistic" do
    get logistic_url(@logistic), as: :json
    assert_response :success
  end

  test "should update logistic" do
    patch logistic_url(@logistic), params: { logistic: { user_id: @logistic.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy logistic" do
    assert_difference('Logistic.count', -1) do
      delete logistic_url(@logistic), as: :json
    end

    assert_response 204
  end
end
