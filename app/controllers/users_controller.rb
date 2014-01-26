class UsersController < ApplicationController
  def create
    User.create(user_params)
    redirect_to calendar_path
  end

  def user_params
    params.require(:user).permit(
      :email ,
      :password ,
      :password_confirmation
    )

  end
end
