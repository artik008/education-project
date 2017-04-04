class TodosController < ApplicationController
  def index

  end

  def create
    @project = Project.find(params[:project_id].values)
    @todo = @project.map{|x| x.todos.create(todo_params)}
    redirect_to root_url
  end
  
  def update
    @todo = Todo.find(params[:id])
    @isCompleted = if @todo.isCompleted == true then false else true end
    @todo.update({:isCompleted => @isCompleted})
    redirect_to "/"
  end
 
  private
    def todo_params
      params.require(:todo).permit(:text)
    end
end
