require 'sinatra'
require 'rest-client'
require 'json'

configure :development do
  set :bind, '0.0.0.0'   
  set :port, 3000
  config_file './config.yml'
end
 
before do
	content_type 'application/json'
end

get '/redirect' do
  code = params[:code]
  @auth = ENV['basic_auth']
  auth_get = 'grant_type=authorization_code&code=' + code + '&redirect_uri=' + ENV['redirect_uri']
  response = RestClient.post('https://qtccna.honeywell.com/sandbox/Auth/OAuth/token', auth_get, {:authorization => @auth, :accept => 'json', :content_type => 'application/x-www-form-urlencoded'})
  response = JSON.parse(response)
  response.to_json ## Spits out the data to the page in json
end