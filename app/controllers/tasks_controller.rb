class TasksController < ApplicationController
  def index
    new
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])
    if @task.save
      flash[:notice] = 'Task was successfully created'

      redirect_to :action => "index"

    else
      @tasks = Task.all
      render :action => "index"
    end
  end

  def finish
    @task = Task.find(params[:id])
    new = {:finished => true}
    @task.update_attributes(new)
    redirect_to :action => "index"
  end

  def unfinish
    @task = Task.find(params[:id])
    new = {:finished => false}
    @task.update_attributes(new)
    redirect_to :action => "index"
  end


end
