class Public::UsersController < ApplicationController

  def show
  end

  def edit
  @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    @user.update(user_params)
    redirect_to user_path(current_user.id)
  end

  def check
    @user = User.find(current_user.id)
  end

  def goodbye
    @user = User.find(current_user.id)
    @user.update(is_active: false)
    reset_session
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:last_name, :first_name, :account, :telephone_number, :email, :is_active)
  end

end
