require 'sequel'
require 'sequel/extensions/seed'
require 'pg'
require 'json'
require 'multi_json'
require 'sinatra'
require 'sinatra/namespace'

before do
  content_type 'application/json' # To see perfectly in POSTMAN - in tab Pretty
end

def collection_to_api(collection)         # For Array
  JSON.dump(collection)
end

get '/' do
  # system 'rake --tasks'
  "Hi! I am api_sinatra_postgres!\n\n"
  # haml :index, :layout => :my_layout
end


%w{ controllers models routes }.each { |dir| Dir.glob("./#{ dir }/*.rb", &method(:require)) }
