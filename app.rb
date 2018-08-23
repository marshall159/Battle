require 'sinatra/base'

class Battle < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "My session secret"
  end

  # enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:p1], session[:p2] = params[:p1_name], params[:p2_name]
    redirect '/play'
  end

  get '/play' do
    @p1, @p2 = session[:p1], session[:p2]
    erb :play
  end

  run! if __FILE__ == $0
end
