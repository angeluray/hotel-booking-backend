class AuthenticationController < ApplicationController
  skip_before_action :authenticate,  only: [:login]

  def login
    @user = User.find_by(username: params[:username])
    if @user
      if(@user.authenticate(params[:password]))
         payload = { user_id: @user.id }
         secret = ENV['SECRET_KEY_BASE'] || Rails.application.secrets.secret_key_base
         token = create_token(payload)
         render json:
         {
          username: @user.username
         }
      else
        render json: { message: "Authentication failed" }
      end
    else
      render json: { message: "Could not find user"}
    end
  end
end
