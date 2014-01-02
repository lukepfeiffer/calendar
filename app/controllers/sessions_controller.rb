class SessionsController < ApplicationController
  def create

    user = User.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password])
      sign_in(user)
      redirect_to calendar_path
    else
      redirect_to root_path

    end
  end
end
