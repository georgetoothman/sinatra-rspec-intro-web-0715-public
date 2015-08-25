require './config/environment'

class TestApp < Sinatra::Base
  get '/about' do
    erb :about
  end

  get '/hello/?:name?' do
    @name = params[:name]
    erb :"hello"
  end

  get '/' do
    erb :"about"
  end

  post '/' do
  end
end