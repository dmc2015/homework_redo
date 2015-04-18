require 'sinatra'
require 'sinatra/reloader'

tasks = ["feed the cactus", "water the doge", "doge the cactus"]



get '/tasks' do
  tasks_to_display = ""
  tasks.each_with_index do |task, idx|
    tasks_to_display << "#{idx}. #{task}<br>"
  end
  return "Todo List:<br>#{tasks_to_display}"
end

get '/tasks/create/:new_task' do
  task_to_add = params[:new_task]
  tasks << task_to_add
  return "Success! Added #{task_to_add} at index #{tasks.length - 1}"
end

get '/tasks/:id' do
  task_id = params[:id].to_i
  return tasks[task_id]
end

get '/tasks/:id/update/:updated_task' do
  index = params[:id].to_i
  updated_task = params[:updated_task]
  tasks[index] = params[:updated_task]

  return "updated task!"
end

get '/tasks/:id/mark_complete' do
  index = params[:id].to_i
  deleted_task = tasks.delete_at(index)

  return "deleted task #{deleted_task}"
end
