class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to calendar_path
    else
      redirect_to root_path
    end
 end

  def user_params
    params.require(:user).permit(
      :email,
      :password,
      :password_confirmation
    )
  end
end
