class ApplicationController < ActionController::Base
  def current_admin
    @current_admin ||= Admin.find(session[:admin_id]) if session[:admin_id]
  end
  
  helper_method :current_admin
  
  def admin_authorize
    redirect_to new_admin_session_path, notice: 'Only Admins can see this content' if current_admin.nil?
  end
end
