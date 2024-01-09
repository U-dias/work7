class TasksController < ApplicationController
  def index
    @task = Task.all
  end
  def new
    @task = Task.new
  end
  def create
    @task = Task.create(Task_params)
    redirect_to tasks_path
  end
  def edit
    @task = Task.find(params[:id])
  end
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
  end
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end
  
  private
   def Task_params
     params.require(:task).permit(:title)
   end
end
