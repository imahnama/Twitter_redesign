class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(Username: params[:id])

    if user
      log_in user
      flash[:notice] = 'Login successfully'
      redirect_to user_path(user)
    else
      flash.now[:notice] = 'Username does not exist'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'You have logged out'
    redirect_to root_path
  end
end
