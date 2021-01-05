class HomeController < ApplicationController
  before_action :admin_authorize
  
  def dashboard
    @projects = Project.all.count
    @projects_canceled = 0
    @projects_completed = 0
    @projects_inprogress = 0
  end
end
