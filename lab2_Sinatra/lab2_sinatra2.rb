require 'sinatra/contrib'
require 'sinatra/base'
module MyAppModule
  class App < Sinatra::Base
    register Sinatra::Namespace
    namespace '/api/v1' do
      get "/" do
        'Hello My Sinatra - Easy and Wide world!'
        end
      get "/hello/:name" do
        "Sinatra приветствует тебя, #{params[:name]}!"
      end
      get '/redirect' do
        redirect to('/api/v1/hello/World')
        end
      get '/*' do
          "I don't know what is the #{params[:splat]}. It's what you typed."
          end
      end
    end
  end

