class UsersController < ApplicationController

  def signup
    @user = User.create(user_params)
    sign_in(:user, @user)

    if @user.valid?
      render json: {success: true}
    else
      render json: {success: false, errors: @user.errors.full_messages}
    end
  end

  def login
    # sign_in(:user, @user)
  end

  private

  def user_params
    params.permit(:email, :password, :password_confirmation, :first_name, :last_name)
  end
end
