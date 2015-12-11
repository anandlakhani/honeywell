require 'rest-client'
require 'sinatra'
require 'json'

get '/' do
  
  response = RestClient::Request.execute method: :post, url: 'http://www.rediff.com'
  response
end

