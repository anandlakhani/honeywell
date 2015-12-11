require 'rest-client'
require 'sinatra'
require 'json'

get '/' do
  response = RestClient::Request.execute method: :get, url: 'https://www.google.com/'
  
  response
end

