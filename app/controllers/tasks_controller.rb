class TasksController < ApplicationController


def index
 @tasks = Task.all
end

def new
end

def show
end
  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Tasak.find(params[:id])
    @task.update(params[task_params])

    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to restaurants_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end

# et '/tasks', to: 'tasks#index'
#   get '/tasks/:id', to: 'tasks#show', as: 'show'
#   get '/tasks/new', to: 'tasks#new', as: 'new'
#   post '/tasks', to: 'tasks#create', as: 'create'
#   get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit'
#   patch '/tasks/:id', to: 'tasks#update', as: 'update'
#   delete '/tasks/:id', to: 'tasks#destroy', as: 'destroy'
# end
