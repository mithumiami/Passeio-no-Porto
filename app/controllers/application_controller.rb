class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: %i[last_name first_name account telephone_number is_active])
  end

  def after_sign_in_path_for(resource)
    posts_path
  end

  def autheniticate_user
    if @current_user==nil
      flash[:notice]="You need to log in"
      redirect_to root_path
    end
  end

  def reject_user
    @user = User.find_by(email: params[:user][:email].downcase)
    if @user
      if (@user.valid_password?(params[:user][:password]) && (@user.active_for_authentication? == false))
        flash[:error] = "退会済みです。"
        redirect_to new_user_session_path
      end
    else
      flash[:error] = "必須項目を入力してください。"
    end
  end

end
