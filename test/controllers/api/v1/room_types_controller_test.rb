require 'test_helper'

class Api::V1::RoomTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_room_type = api_v1_room_types(:one)
  end

  test 'should get index' do
    get api_v1_room_types_url, as: :json
    assert_response :success
  end

  test 'should create api_v1_room_type' do
    assert_difference('Api::V1::RoomType.count') do
      post api_v1_room_types_url,
           params: { api_v1_room_type: { description: @api_v1_room_type.description, price: @api_v1_room_type.price, type: @api_v1_room_type.type } }, as: :json
    end

    assert_response :created
  end

  test 'should show api_v1_room_type' do
    get api_v1_room_type_url(@api_v1_room_type),
        as: :json
    assert_response :success
  end

  test 'should update api_v1_room_type' do
    patch api_v1_room_type_url(@api_v1_room_type),
          params: { api_v1_room_type: { description: @api_v1_room_type.description, price: @api_v1_room_type.price, type: @api_v1_room_type.type } }, as: :json
    assert_response :success
  end

  test 'should destroy api_v1_room_type' do
    assert_difference('Api::V1::RoomType.count',
                      -1) do
      delete api_v1_room_type_url(@api_v1_room_type),
             as: :json
    end

    assert_response :no_content
  end
end
