require 'sinatra'
require 'shotgun'

class Battle < Sinatra::Base
  get '/' do
    "Hello Battle!"
  end
end
