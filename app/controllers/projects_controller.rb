class ProjectsController < ApplicationController
  def index
    @project = Project.all
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to "/"
  end

end
