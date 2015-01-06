require 'sinatra/base'

class Battleships < Sinatra::Base
  
  get '/' do
    
  	erb :index

  end

  get '/hello' do
  	@name = params[:name]
  	erb :hello
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
