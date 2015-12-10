require 'sinatra'
require 'rest-client'
require 'json'

before do
	content_type 'application/json'
end

get '/' do
  "Hello World!"
  code = params[:code]
  
  auth = ENV['basic_auth']
  
  response = RestClient.get( 'http://www.rediff.com')
  response.code
 
end


