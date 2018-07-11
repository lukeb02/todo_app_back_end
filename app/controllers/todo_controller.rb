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
    @todo_pomodoro_estimate = '4'
end
end

end
