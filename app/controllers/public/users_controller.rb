class Public::UsersController < ApplicationController

  def show
  end

  def edit
  @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    @user.update(user_params)
    flash[:notice] = "Information was successfully updated."
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
  
  def prof
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  private
  def user_params
    params.require(:user).permit(:last_name, :first_name, :account, :telephone_number, :email, :is_active)
  end

end
