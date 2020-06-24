class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(Username: params[:session][:Username])

    if user
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'You have logged out'
    redirect_to root_path
  end
end
