class ApplicationController < ActionController::Base
  #コントローラーの先頭に、before_action :authenticate_user!と記述すると、
  #この記述により、ログインしていないユーザーをログインページの画面に促すことができます。
  before_action :authenticate_user!,  only: [:new, :edit, :update, :destroy]
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :name, :profile, :occupation, :position])
  end
end