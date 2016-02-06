class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(user)
  	sign_out user
  	root_url
  end

  protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:sign_up) do |sign_up|
			sign_up.permit(:email, :password, :password_confirmation, :first_name, :last_name, :gender, :dob)
		end
	end
end
