require 'sinatra/base'

class Battleships < Sinatra::Base
  
  get '/' do
    
  	erb :index

  end

  get '/hello' do

  	erb :hello

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end