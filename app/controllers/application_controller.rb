class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def current_company
    current_user.company if current_user
  end
  helper_method :current_company

  def after_sign_in_path_for(resource)
    dashboard_path
  end
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:avatar, :avatar_cache])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar, :avatar_cache])
  end
end
