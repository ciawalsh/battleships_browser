require 'sinatra/base'
require './lib/water'
require './lib/ship'
require './lib/player'
require './lib/game'
require './lib/cell'
require './lib/board'

class Battleships < Sinatra::Base

  game = Game.new
  board = Board.new(Cell)
  ship = Ship.destroyer
	board.grid.each {|coord, cell| cell.content = Water.new }

	enable :sessions

  get '/' do
  	erb :index
  end

  get '/hello' do
  	@name = params[:name]
  	@namep2 = params[:namep2]
  	erb :hello
  end

  get '/game' do
    @ship = params[:ship]
    erb :game
  end

  get '/single_player' do
    @player = Player.new
  	@player.name = params[:name]
    game.player1 = @player
  	erb :single_player
  end

  get '/single_game' do
  		@keys = board.grid.keys
  		erb :single_game
  end

  post '/single_game' do
  	@keys = board.grid.keys
  	@push_coord = params[:coord]
  	
  	if @push_coord
      board.shoot_at(@push_coord.to_sym)
    elsif params[:ship]
    	board.place(ship, params[:ship].to_sym, :horizontally)
  	end

  	@ships = board.floating_ships?

  	puts board.inspect
  	erb :single_game
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
