require 'rubygems'
require 'sinatra'
require 'slim'
require 'less'
require 'coffee_script'
require 'json'

Slim::Engine.set_default_options :pretty => true, :tabsize => 2

get '/' do
  # theme our output with slim!
  slim :index
end

get '/css/*.css' do
  filename = params[:splat].first
  # parse our output with less!
  less filename.to_sym
end

get '/js/*.js' do
  filename = params[:splat].first
  # parse our output with coffee!
  coffee filename.to_sym
end

not_found do
  halt 404, 'page not found'
end

helpers do
end
