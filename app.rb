require 'sinatra/base'
# require 'spec_helper'
require_relative 'lib/player'

class Batle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :form
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb :play
  end

  get '/attack' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
