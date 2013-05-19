require 'rubygems'
require 'sinatra'
require 'slim'
require 'RedCloth'
require 'less'
require 'coffee_script'

Slim::Engine.set_default_options :pretty => true, :tabsize => 2

get '/' do
  @decks = get_decks
  # theme our output with slim!
  slim :decks
end

get '/decks/*' do
  deck = params[:splat].first
  slim :"decks/#{deck}"
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
  def get_decks
    Dir.entries("views/decks")
      .select {|f| !File.directory? f}
      .map! {|f| f[/(.*).slim/, 1] }
  end
end
