#require './lab2_sinatra'
#run Sinatra::Application

root = File.expand_path File.dirname(__FILE__)
require File.join( root , 'lab2_sinatra2.rb' )

app = Rack::Builder.app do
  run MyAppModule::App
end

run app
