class Admin::UsersController < ApplicationController

  def index
    @users = User.all
  end

  def user

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
  def user_params
    params.require(:user).permit(:email, :last_name, :first_name, :account, :telephone_number, :is_active)
  end


end
