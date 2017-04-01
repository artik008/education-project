class TodosController < ApplicationController
  def index

  end

  def create
    @project = Project.find(params[:project_id].values)
    @todo = @project.map{|x| x.todos.create(todo_params)}
    redirect_to root_url
  end
  
  def update

  end
 
  private
    def todo_params
      params.require(:todo).permit(:text)
    end
end
