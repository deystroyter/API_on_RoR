require 'sequel'
require 'sequel/extensions/seed'
require 'pg'
require 'json'
require 'multi_json'
require 'sinatra'
require 'sinatra/namespace'

DB = Sequel.connect(
  adapter: :postgres,
  database: 'sinatra_seq_dev',
  host: 'localhost',
  password: 'password',
  user: 'sinatra_admin',
  max_connections: 10,
  )

before do
  content_type 'application/json'
end

def collection_to_api(collection)
  MultiJson.dump(collection.map{|s| s.to_hash})
end


%w{ controllers models routes }.each { |dir| Dir.glob("./#{ dir }/*.rb", &method(:require)) }
