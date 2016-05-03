class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_devise_permitted_parameters, if: :devise_controller?

 # before_filter :authenticate_user!

 protected
  def configure_devise_permitted_parameters
  	registration_params = [:name, :address, :role, :email, :password, :password_confirmation]
 
  	if params[:action] == 'update'
  		devise_parameter_sanitizer.for(:action_update){
  			|u| u.permit(registration_params << :current_password)
  		}
  	elsif params[:action] == 'create'
  		devise_parameter_sanitizer.for(:sign_up){
  			|u| u.permit(registration_params)
  		}
  		
  	end  		
  	end
end
