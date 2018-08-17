class UsersController < ApplicationController
  def new
  end

  def create
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
  end

  def user_params
    params.require(:user).permit(:email, :password, :photo)
  end
end
