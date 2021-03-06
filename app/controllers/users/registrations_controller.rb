class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json
  
  before_filter :configure_permitted_parameters

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:first_name, :last_name, :email, :password, 
        :password_confirmation,:avatar, :avatar_cache)
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:first_name, :last_name, :email, :password, 
        :password_confirmation, :current_password, :avatar, :avatar_cache)
    end
  end
end