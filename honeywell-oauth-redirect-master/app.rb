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
  response = RestClient::Request.execute method: post, url: 'https://qtccna.honeywell.com/sandbox/Auth/OAuth/token',accept: 'json', payload: auth_get, authorization: auth,  content_type: 'application/x-www-form-urlencoded'
  response
end

