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
    session[:p1_hitpoints], session[:p2_hitpoints] = 100, 100
    session[:turn] = :p1
    redirect '/play'
  end

  post '/p1_attacks' do
    session[:p2_hitpoints] -= 10
    session[:message] = "P1's attack was super effective"
    redirect '/play'
  end

  post '/p2_attacks' do
    session[:p1_hitpoints] -= 10
    session[:message] = "P2's attack was super effective"
    redirect '/play'
  end

  get '/play' do
    @p1, @p2 = session[:p1], session[:p2]
    @hp1, @hp2 = session[:p1_hitpoints], session[:p2_hitpoints]
    @message = session[:message]
    erb :play
  end

  run! if __FILE__ == $0
end
