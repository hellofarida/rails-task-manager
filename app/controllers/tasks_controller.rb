class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  append_after_action :redirect_to_task, only: [:create, :update]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(tasks_param)
    @task.save
    redirect_to task_path(@task)
  end

  def update
    @task.update(tasks_param)
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def redirect_to_task

  end

  def set_task
    @task = Task.find(params[:id])
  end

  def tasks_param
    params.require(:task).permit(:title, :details, :completed)
  end
end
