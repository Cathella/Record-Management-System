class AdminSessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by_username(params[:username])
    if admin && admin.authenticate(params[:password])
      session[:admin_id] = admin.id
      redirect_to home_dashboard_path, notice: 'Admin logged in'
    else
      render :new, notice: 'Wrong Username or Password'
    end
  end

  def destroy
    session[:admin_id] = nil
    redirect_to new_admin_session_path, notice: 'Admin logged out'
  end
end
