class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @session = User.find_by(
      name: params[:user][:name],
      password_digest: params[:user][:password_digest]
    )

    if @session.present?
      session[:user_id] = @session.id
      redirect_to vinos_path
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
