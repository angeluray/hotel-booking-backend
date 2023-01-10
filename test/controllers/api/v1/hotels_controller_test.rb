require 'test_helper'

class Api::V1::HotelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_hotel = api_v1_hotels(:one)
  end

  test 'should get index' do
    get api_v1_hotels_url, as: :json
    assert_response :success
  end

  test 'should create api_v1_hotel' do
    assert_difference('Api::V1::Hotel.count') do
      post api_v1_hotels_url,
           params: { api_v1_hotel: { description: @api_v1_hotel.description, image: @api_v1_hotel.image, name: @api_v1_hotel.name, rating: @api_v1_hotel.rating } }, as: :json
    end

    assert_response :created
  end

  test 'should show api_v1_hotel' do
    get api_v1_hotel_url(@api_v1_hotel), as: :json
    assert_response :success
  end

  test 'should update api_v1_hotel' do
    patch api_v1_hotel_url(@api_v1_hotel),
          params: { api_v1_hotel: { description: @api_v1_hotel.description, image: @api_v1_hotel.image, name: @api_v1_hotel.name, rating: @api_v1_hotel.rating } }, as: :json
    assert_response :success
  end

  test 'should destroy api_v1_hotel' do
    assert_difference('Api::V1::Hotel.count',
                      -1) do
      delete api_v1_hotel_url(@api_v1_hotel),
             as: :json
    end

    assert_response :no_content
  end
end
