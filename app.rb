require 'rubygems'
require 'bundler'

Bundler.require

require 'dotenv/load'
require './models/location.rb'
require './models/status.rb'

set :database, {adapter: "sqlite3", database: ENV['DATABASE']}

before do
  content_type :json
end

get '/' do
  Location.all.to_json
end

get '/update/:location/:status' do
  location = Location.find(params[:location])
  Status.create(
    location_id: location.id,
    level: params[:status].to_i
  )
rescue Exception => e
  { error:  e.message }.to_json
end

