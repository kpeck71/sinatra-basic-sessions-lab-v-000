require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
    @sessions = session
  end

  get '/' do
    @session = session
    erb :index
  end

  post '/checkout' do
    @sessions = params[:item]

    erb :checkout
  end

end
