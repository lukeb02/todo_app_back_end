class TodoController < ApplicationController
def index
end
def show
@todo_description = "Eat eggs"
@todo_pomodoro_estimate = "7"
todo_id = params[:id]
if todo_id == '1'
    @todo_description = 'Wake Up' 
    @todo_pomodoro_estimate = '1'
    elsif todo_id == '2'
    @todo_description = 'Get Dressed'
    @todo_pomodoro_estimate = '1'
    elsif todo_id == '3'
    @todo_description = 'Eat Breakfast'
    @todo_pomodoro_estimate = '2'
    elsif todo_id == '4'
    @todo_description = 'Brush Teeth'
    @todo_pomodoro_estimate = '2'
    
end
@todo=Todo.find_by_id(params[:id])
end
def new

end
def create
    t=Todo.new
    t.description = params['description']
    t.pomodoro_estimate = params['pomodoro_estimate']
    t.save
    redirect_to "/todo/show/#{t.id}"
    @todo=Todo.find_by_id(params[:id])
end
end
