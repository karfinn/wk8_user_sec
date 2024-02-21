class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new
    @task["description"] = params["description"]
    # assign task to a signed-in user
    @task["user id"] = @user["id"]
    @task.save
    redirect_to "/tasks"
  end

  def destroy
    #used when a task is "completed"
    @task = Task.find_by({ "id" => params["id"] })
    @task.destroy
    redirect_to "/tasks"
  end
end
