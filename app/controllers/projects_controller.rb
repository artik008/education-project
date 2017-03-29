class ProjectsController < ApplicationController
  def index
    @project = Project.all
  end
  
  def new
    @project = Project.new
    redirect_to project_path()
  end

  def show
    @project = Project.find(params[:id])
    redirect_to project_path()
  end
end
