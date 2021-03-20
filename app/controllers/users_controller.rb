class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    @user.save
    session[:user_id] = @user.id
    redirect_to vinos_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :password_digest)
  end
end
