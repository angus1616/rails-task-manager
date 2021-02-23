class TasksController < ApplicationController
  before_action :tasky, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_attr)
    @task.save
    redirect_to tasks_url(@task)
  end

  def completed?
    @completed = true
  end

  def edit
  end

  def update
    @task.update(task_attr)
    redirect_to tasks_url(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_url
  end

  private

  def tasky
    @task = Task.find(params[:id])
  end

  def task_attr
    params.require(:task).permit(:title, :details, :completed)
  end
end
