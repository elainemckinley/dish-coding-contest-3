require 'sinatra/base'
require 'pry'

class App < Sinatra::Base
  post '/' do
    req = JSON.parse(request.body.read)
    body = {
      value: req['min'] + 2
    }

    body.to_json
  end
end

def thing
  'yo'
end
