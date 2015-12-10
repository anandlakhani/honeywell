require 'sinatra'
require 'rest-client'
require 'json'

before do
	content_type 'application/json'
end

get '/' do
  "Hello World!"
  
  code = params[:code]
  auth_get = 'grant_type=authorization_code&code=' + code + '&redirect_uri=https://honeywell.herokuapp.com/redirect'
  response = RestClient.post('http://www.rediff.com', auth_get, { :accept => 'json', :content_type => 'text/html'})
  response = JSON.parse(response)
  response.to_json
end


