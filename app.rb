require 'sinatra'
require 'shotgun'

class Battle < Sinatra::Base
  get '/' do
    "Testing infrastructure working!"
  end
end
