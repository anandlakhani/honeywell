require 'rest-client'
require 'sinatra'
require 'json'

get '/' do
  
  code = params[:code]
  @auth = ENV['basic_auth']
  auth_get = 'grant_type=authorization_code&code=' + code + '&redirect_uri=https://honeywell.herokuapp.com/redirect' 
  response = RestClient::Request.execute method: :get, url: 'http://www.rediff.com'
  response
end

