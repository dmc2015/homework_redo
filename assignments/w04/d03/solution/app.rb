require 'sinatra'
require 'sinatra/reloader'

require_relative 'db/connection'

# Load specific routes
require_relative 'controllers/artists'
require_relative 'controllers/songs'

# Load models
require_relative 'models/artist'
require_relative 'models/song'


# Fix an issue with sinatra and Active Record where connections are left open
after do
  ActiveRecord::Base.connection.close
end


####################
#  General routes  #
####################

get '/' do
  erb(:home)
end

get '/about' do
  erb(:about)
end
