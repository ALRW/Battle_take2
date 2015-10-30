require 'sinatra/base'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player1 = Player.new(params[:player1])
    @player2 = Player.new(params[:player2])
    $game = Game.new(@player1, @player2)
    redirect'/play'
  end

  get '/play' do
    p @game = $game
    p @game.current_turn
    erb(:play)
  end

  get '/attack' do
    p @game = $game
    @game.attack(@game.player_2)
    p @game.turn_switcher
    erb(:attack)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
