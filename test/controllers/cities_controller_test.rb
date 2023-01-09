require "test_helper"

class CitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @city = cities(:one)
  end

  test "should get index" do
    get cities_url, as: :json
    assert_response :success
  end

  test "should create city" do
    assert_difference("City.count") do
      post cities_url, params: { city: { city_name: @city.city_name, country_name: @city.country_name } }, as: :json
    end

    assert_response :created
  end

  test "should show city" do
    get city_url(@city), as: :json
    assert_response :success
  end

  test "should update city" do
    patch city_url(@city), params: { city: { city_name: @city.city_name, country_name: @city.country_name } }, as: :json
    assert_response :success
  end

  test "should destroy city" do
    assert_difference("City.count", -1) do
      delete city_url(@city), as: :json
    end

    assert_response :no_content
  end
end
