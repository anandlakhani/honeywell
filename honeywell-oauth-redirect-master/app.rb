require 'rest-client'
require 'sinatra'
require 'json'

get '/' do
  
  response = RestClient::Request.execute method: :post, url: 'https://qtccna.honeywell.com/sandbox/Auth/OAuth/token'
  response
end

