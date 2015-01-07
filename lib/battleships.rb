require 'sinatra/base'

class Battleships < Sinatra::Base
  
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

  # start the server if ruby file executed directly
  run! if app_file == $0
end
