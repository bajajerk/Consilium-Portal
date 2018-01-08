class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters , if: :devise_controller?

protected

def configure_permitted_parameters
	
	devise_parameter_sanitizer.permit(:sign_up, keys: [:name,  :email , :password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name , :email , :password , :remember_me ])
	end


def after_sign_in_path_for(resource)
	 puts current_user.phone
	 puts current_user.collegename
    if(!current_user.phone.nil? && !current_user.collegename.nil?)
   		root_url
    else
           # home_profile_url
   		root_url

    end
end

end
