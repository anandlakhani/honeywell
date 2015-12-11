require 'rest-client'
require 'sinatra'
require 'json'

get '/' do
  response = RestClient::Request.execute method: :post, url: 'https://www.google.com/'
  
  response
end

