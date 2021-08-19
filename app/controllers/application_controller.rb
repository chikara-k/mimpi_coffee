class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale
  
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
  
  def default_url_options(options = {})
     { :locale => I18n.locale }.merge options
  end

  def after_sign_in_path_for(resource)
    case resource
    when Admin
      admin_root_path
    when Customer
      ec_mypage_path(current_customer.id)
    end
  end

  def after_sign_out_path_for(resource)
    if resource == :admin
      admins_sign_in_path
    else
      root_path
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [
      :first_name,
      :last_name,
      :first_name_kana,
      :last_name_kana,
      :postal_code,
      :address,
      :telephone_number,
      :is_active,
    ])
  end
end
