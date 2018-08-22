require 'sinatra'
require 'shotgun'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    @p1, @p2 = params[:p1_name], params[:p2_name]
    erb :play
  end

end
