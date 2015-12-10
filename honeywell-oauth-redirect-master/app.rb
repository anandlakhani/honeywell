require 'sinatra'
require 'rest-client'
require 'json'

before do
	content_type 'application/json'
end

get '/' do
  "Hello World!"
  
  code = params[:code]
  @auth = 'base64ClientIDandSecret'
  auth_get = 'grant_type=authorization_code&code=' + code + '&redirect_uri=https://honeywell.herokuapp.com/redirect'
  response = RestClient.post('https://qtccna.honeywell.com/sandbox/Auth/OAuth/token', auth_get, {:authorization => @auth, :accept => 'json', :content_type => 'application/x-www-form-urlencoded'})
  response = JSON.parse(response)
  response.to_json
end


