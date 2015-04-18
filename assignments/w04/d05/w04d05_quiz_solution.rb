# Da Quiz

=begin
Your solutions to all the problems below (except for Problem 0) should be included in this file.
=end

## Problem 0
=begin
As you would with a regular homework assignment, please copy this file to your student homework folder for ‘w04/d05’, make the necessary edits, push it, and then make a pull request.

The instructors will not provide assistance. If you can NOT create the PR, please copy and paste the file as a public Gist (https://gist.github.com/), and share the link with the instructors as an issue in the homework repository.
=end

#####################################
# Number 1
# Please refactor the following mess as proper code:

class doctor << ActiveRecord:Base

def initialize
end

def has_degree?
puts "true"
end

def specialty
  return @specialty
end

validates :presence, :name => true

end

# Number 1: Answer:
# Note: this is not the ONLY answer.
# Any functional ruby code should be sufficient.
# Just be able to support your choice.

class Doctor < ActiveRecord::Base
  validates :name, presence: true

  # do not use initialize with AR

  def has_degree?
    return true
  end

  def specialty
    return @specialty
  end
end

#####################################
# Number 2
=begin
Given an app.rb file for our Doctor, create the route methods (signature only)
  you'd need for full CRUD functionality.

Bonus: fill in each route method with appropriate code
=end

# app.rb
require 'sinatra'
require 'sinatra/reloader'
require ‘active_record’
require ‘pg’

# --------------------------------
#        Your Code Here
# --------------------------------

#index
get ‘/doctors’ do
  @doctors = Doctor.all
  erb :index
end

# show
get ‘/doctors/:id’ do
  @doctor = Doctor.find(params[:id])
  erb :show
end

# new
get ‘/doctors/:id/new’ do
  @doctor = Doctor.new
  erb :new
end

#create
post ‘/doctors’ do
  doctor = Doctor.create!(params[:doctor])
  redirect '/doctors' # index
end

# edit
get ‘/doctors/:id/edit’ do
  @doctor = Doctor.find(params[:id])
  erb :edit
end

# two options for update
put ‘/doctors/:id’ do
  # update #1
  @doctor = Doctor.find(params[:id])
  @doctor.update(params[:doctor])
  redirect "/doctors/#{@doctor.id}" # show
end
# or…
put ‘/doctors/:id/update’ do
 # update #2
 # see above
end

# two options for delete
delete ‘/doctors/:id’ do
  #delete #1
  Doctor.destroy(params[:id])
  redirect '/doctors' # index
end
# or…
delete ‘/doctors/:id/delete’ do
  #delete #2
  # see above
end


#####################################
# Number 3
=begin
A) We want a link, showing the doctor’s name, on our page that will go to the
show page for the individual doctor, with these attributes:
{id: 14, name: ‘Patch Adams’, specialty: ‘Laughter is the Best Medicine’}

Please write out what this link would look like rendered as pure HTML
=end

# --------------------------------
#        Your Answer Here
# --------------------------------

` <a href=”/doctors/14’>Patch Adams</a>`


# 3B) Select from below the how this link would look when we write it out in our ERB view.
# 1) `<link src="/doctors/id" method="get"/>Patch Adams</a>`
# 2) `<a href="/doctors/<%=doctor.id%>"><%= doctor.name %></a>`
# 3) `<button type="submit" class="doctors_id"/>Dr. Seuss</a>`
# 4) `<a href="/show/<%=:id%>"><% doctor.name %></a>`

# --------------------------------
#        Your Answers Here
# --------------------------------
2


#####################################
# Number 4
List 4 important components of the Request/Response Cycle on the Web:

## Number 4 Answers
# --------------------------------
#        Your Answers Here
# --------------------------------

- User/Client/Browser
- Server
- Controller/Router/app.rb
- Model
- Database
- View

# Number 5
=begin
Given the following code:
You are to finish building the calls to `get_words` (by replacing the question marks)
so that they will return the proper words to print this `madlib sentence`:
“The Platypus can Jam Out in a Stumpy manner.”
=end

def get_words(word_type, word_category, word_index)
  madlibs_options = {
    :noun => {:names => ["Robin", "Matt", "Andy"],
              :objects => ["Chair", "Platypus", "Cheeto"]},
    :verb => {:happy => ["Dance", "Jam Out", "Play", "Code"],
              :mean => ["Fight", "Yell", "Stab"]},
    :adjective => {:funny => ["Weird", "Special", "Squishy"],
                   :physical => ["Solid", "Tall", "Stumpy"]}
  }
  madlibs_options[word_type][word_category][word_index]
end

def madlib_sentence(noun, verb, adjective)
  puts "The #{noun} can #{verb} in a #{adjective} manner."
end

noun = get_words(:noun, ?, ?)
verb = get_words(?, :happy, ?)
adjective = (?, ?, 2)
madlib_sentence(noun, verb, adjective)


## Number 5: Answer
noun = get_words(:noun, :objects, 1)
verb = get_words(:verb, :happy, 1)
adjective = get_words(:adjective, :physical, 2)
madlib_sentence(noun, verb, adjective) #=> “The Platypus can Jam Out in a Stumpy manner.”
