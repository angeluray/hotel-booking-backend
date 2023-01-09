require "test_helper"

class Api::V1::CitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_city = api_v1_cities(:one)
  end

  test "should get index" do
    get api_v1_cities_url, as: :json
    assert_response :success
  end

  test "should create api_v1_city" do
    assert_difference("Api::V1::City.count") do
      post api_v1_cities_url, params: { api_v1_city: { name: @api_v1_city.name } }, as: :json
    end

    assert_response :created
  end

  test "should show api_v1_city" do
    get api_v1_city_url(@api_v1_city), as: :json
    assert_response :success
  end

  test "should update api_v1_city" do
    patch api_v1_city_url(@api_v1_city), params: { api_v1_city: { name: @api_v1_city.name } }, as: :json
    assert_response :success
  end

  test "should destroy api_v1_city" do
    assert_difference("Api::V1::City.count", -1) do
      delete api_v1_city_url(@api_v1_city), as: :json
    end

    assert_response :no_content
  end
end
