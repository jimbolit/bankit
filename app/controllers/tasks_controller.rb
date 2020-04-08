class TasksController < ApplicationController

    def index
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.new()

        if @task.save
            redirect_to @task
        else
            render 'new'
        end
    end

    def show
        @task = Task.find(params[:id])
    end


    private

    def task_params
     params.required(:task).permit(:title, :content)
    end

end
