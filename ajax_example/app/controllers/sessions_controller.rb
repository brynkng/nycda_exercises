class SessionsController < ApplicationController
  def login
    @user = User.find_by_email(params[:email])
    if @user && @user.valid_password?(params[:password])
      sign_in(:user, @user)
      render json: {success: true}
    else
      render json: {success: false}
    end
  end

end
