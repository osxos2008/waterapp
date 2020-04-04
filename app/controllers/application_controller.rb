class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if resource.project == 1  
      new_aljnaben_path
    elsif resource.project == 2
      new_tohamhalshamel_path
    elsif resource.project == 3
      new_alashiab_alsoqium_path
    elsif resource.project == 4
      new_aradah_path
    elsif resource.project == 5
      new_smallproject_path
    else
      projects_path
    end
  end

  

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name mobile admin project])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[name mobile project admin])
  end
end
