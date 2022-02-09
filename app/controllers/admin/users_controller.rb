class Admin::UsersController < ApplicationController

  def index
    @users = User.all
    #binding.pry

  end

  def show
    @user = User.find(params[:id])

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to admin_users_path
  end

  def destroy

  end

  private
  def user_params
    params.require(:user).permit(:email, :last_name, :first_name, :account, :telephone_number, :is_active)
  end


end
