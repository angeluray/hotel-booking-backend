class ApplicationController < ActionController::API
  before_action :authenticate

  def authenticate
    if request.headers['Authorization']
      begin
        auth_header = request.headers['Authorization']
        decoded_token = JWT.decode(token, secret)
        payload = decoded_token.first
        user_id = payload['user_id']
        @user = User.find(user_id)
      rescue StandardError => e
        render json: { message: "Error: #{e}" }, status: :forbidden
      end
    else
      render json: { message: 'No authorization header sent' }, status: :forbidden
    end
  end

  def token
    auth_header.split(' ')[1]
  end

  def secret
    secret = ENV['SECRET_KEY_BASE'] || Rails.application.secrets.secret_key_base
  end

  def create_token
    JWT.encode(payload, secret)
  end
end
