class TodosController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @todo = @project.todos.create(todo_params)
    redirect_to project_path(@project)
  end

  def new
    @todo = Todo.new
  end
 
  private
    def todo_params
      params.require(:todo).permit(:text, :isCompeted)
    end
end
