require 'sinatra'
require 'pry'

post '/' do
  req = JSON.parse(request.body.read)
  body = {
    value: req['min'] + 2
  }

  body.to_json
end
