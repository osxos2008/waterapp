class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if resource.project == 1  
      new_district_path
    elsif resource.email == "admin@admin"
      new_project_path
    else
      new_aljnaben_path
    end
  end

  

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name mobile admin project])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[name mobile project])
  end
end
