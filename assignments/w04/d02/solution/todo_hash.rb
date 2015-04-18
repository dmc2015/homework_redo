require 'sinatra'
require 'sinatra/reloader'

tasks = [ {name: "feed the cactus", completed: false},
          {name: "wash the cactus", completed: true},
          {name: "water the cactus", completed: false}]

get '/tasks' do
  tasks_to_display = "Todo List: <br>"

  # instead of splitting the array into two separate array (which would break
  # our indices), instead we'll just add the task either with or without strike-
  # through tags depending on its completed status
  tasks.each_with_index do |task, idx|
    if task[:completed]
      tasks_to_display << "<strike>#{idx}. #{task[:name]}<br></strike>"
    else
      tasks_to_display << "#{idx}. #{task[:name]}<br>"
    end
  end
  return tasks_to_display
end


get '/tasks/create/:new_task_name' do
  # tasks are now hashes, so we need to build a hash and add it to the list
  task_name = params[:new_task_name]
  tasks << {name: task_name, completed: false}

  return "Success! Added #{task_to_add} at index #{tasks.length - 1}"
end

get '/tasks/:id' do
  index = params[:id].to_i
  task = tasks[index]

  # we'll display a single task the same way, except we'll add a strikethrough
  # to the task if its completed status is true
  task_info = "#{index}. #{task[:name]}"
  if task[:completed]
    return "<strike>#{task_info}</strike>"
  else
    return "#{task_info}"
  end
end

get '/tasks/:id/update/:updated_task_name' do
  index = params[:id].to_i
  task_to_update = tasks[index]

  updated_task_name = params[:updated_task_name]
  task_to_update[:name] = updated_task_name

  return "updated task!"
end

get '/tasks/:id/mark_complete' do
  index = params[:id].to_i
  task = tasks[index]
  task[:completed] = true

  return "marked task complete!"
end
