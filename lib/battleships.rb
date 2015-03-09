require 'sinatra/base'
require './lib/water'
require './lib/ship'
require './lib/player'
require './lib/game'
require './lib/cell'
require './lib/board'

class Battleships < Sinatra::Base

  game = Game.new
  BOARD = Board.new(Cell)
  ship = Ship.destroyer
	BOARD.grid.each {|coord, cell| cell.content = Water.new }

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
  	@keys = BOARD.grid.keys
  	erb :single_game
  end

  post '/place_ship' do
    puts params
    BOARD.place(ship, params[:coordinate].to_sym, params[:direction].to_sym)
    p BOARD.grid[params[:coordinate].to_sym]
    p BOARD.grid[params[:coordinate].to_sym].content

    @message = "Ship placed"
    @keys = BOARD.grid.keys

    erb :single_game
  end

  post '/single_game' do
  	@keys = BOARD.grid.keys
  	@push_coord = params[:coord]
  	
    BOARD.shoot_at(@push_coord.to_sym)
    @message = BOARD.grid[@push_coord.to_sym].hit? && (BOARD.grid[@push_coord.to_sym].content.is_a?(Ship)) ? "Hit!" : "You missed"
    p BOARD.grid[@push_coord.to_sym]
    p BOARD.grid[@push_coord.to_sym].content
    puts @push_coord
  	@ships = BOARD.floating_ships?

  	erb :single_game
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
