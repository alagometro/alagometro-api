require 'rubygems'
require 'bundler'
require 'active_record'

Bundler.require

require 'dotenv/load'
require './models/location.rb'
require './models/status.rb'
require './config/environment.rb'

before do
  content_type :json
end

get '/' do
  Location.all.map(&:to_api).to_json
end

get '/update/:secret/:location/:status' do
  raise 'Não é permitido performar alterações sem estar autorizado' if params[:secret] != ENV['SECRET']
  location = Location.find(params[:location])
  Status.create(location_id: location.id, level: params[:status].to_i)

  location.to_api.to_json
rescue Exception => e
  { error:  e.message }.to_json
end

