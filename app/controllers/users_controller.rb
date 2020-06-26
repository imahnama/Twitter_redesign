class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      respond_to do |format|
      format.html { redirect_to root_path, notice: 'User was successfully created.'}
      format.json { render :show, status: :created, location: @user }
      # format.js
    end
    else
      render 'new'
    end
  end

  def show
     @user = User.find(params[:id])
  end

  private

  def user_params
     params.require(:user).permit(:Username, :FullName, :Photo, :CoverImage)
  end
end
