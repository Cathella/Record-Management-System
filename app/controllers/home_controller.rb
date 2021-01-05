class HomeController < ApplicationController
  def dashboard
    @projects = Project.all.count
    @projects_canceled = 0
    @projects_completed = 0
    @projects_inprogress = 0
  end
end
