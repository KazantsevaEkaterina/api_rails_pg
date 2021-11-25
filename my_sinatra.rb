# запросы API

require 'sinatra'
require 'sinatra/namespace'

get '/' do
  'Hello My Sinatra - Easy and Wide world!'
end


get '/hello/:name' do
  "Sinatra приветствует тебя, #{params['name']}!"
end

namespace '/api/v1' do
  get '/*' do
    "I don't know what is the #{params['splat']}. It's what you typed."
    end
end
