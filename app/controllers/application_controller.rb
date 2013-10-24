class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
  def heroku_config_vars_authorized?
    current_user && current_user.admin?
  end 
end
