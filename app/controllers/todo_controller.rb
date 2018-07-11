class TodoController < ApplicationController
def index
end
def show
@todo_description = "Eat eggs"
@todo_pomodoro_estimate = "7"
todo_id = params[:id]
if todo_id == '1'
    @todo_description = 'Im Changed' 
    @todo_pomodoro_estimate = '100'
    elsif todo_id == '5'
    @todo_description = 'Hello'
    @todo_pomodoro_estimate = '10'
end
end

end
