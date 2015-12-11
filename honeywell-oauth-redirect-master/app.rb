require 'rest-client'
require 'sinatra'
require 'json'

get '/redirect' do
  response = RestClient::Request.execute method: :get, url: 'https://www.google.com/'
  
  code = params[:code]
  @auth = ENV['basic_auth']
  auth_get = 'grant_type=authorization_code&code=' + code + '&redirect_uri=https://honeywell.herokuapp.com/redirect'
  response = RestClient.post('https://qtccna.honeywell.com/sandbox/Auth/OAuth/token', auth_get, :authorization => @auth, :accept => 'json', :content_type => 'application/x-www-form-urlencoded'
  response
end

