require 'sinatra'
require 'rest-client'
require 'json'

before do
	content_type 'application/json'
end

get '/redirect' do
  code = params[:code]
  @auth = ENV['basic_auth']
  auth_get = 'grant_type=authorization_code&code=' + code + '&redirect_uri=' + ENV['redirect_uri']
  
 
rescue => e
    "ERROR: #{e}"
 end 



