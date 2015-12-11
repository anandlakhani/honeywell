require 'rest-client'
require 'sinatra'
require 'json'

get '/' do
  
  code = params[:code]
  @auth = ENV['basic_auth']
  auth_get = 'grant_type=authorization_code&code=' + code + '&redirect_uri=' + ENV['redirect_uri']
  response = RestClient::Request.execute method: :post, url: 'http://www.rediff.com'
 ## response = 'Hello World !'
  response
end

