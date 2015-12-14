require 'rest-client'
require 'sinatra'
require 'json'

before do
	content_type 'application/json'
end

get '/redirect' do
  
  code = params[:code]
  auth = ENV['basic_auth']
  auth_get = 'grant_type=authorization_code&code=' + code + '&redirect_uri=https://honeywell.herokuapp.com/redirect'
  response= RestClient.get('https://qtccna.honeywell.com/sandbox/', {:accept => :html})
  response 
  
  
end

