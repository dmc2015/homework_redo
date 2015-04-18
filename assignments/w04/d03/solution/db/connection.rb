require 'active_record'

# Load Active Record and connect to the DB
ActiveRecord::Base.establish_connection({
  database: 'tunr_db',
  adapter: 'postgresql'
})
