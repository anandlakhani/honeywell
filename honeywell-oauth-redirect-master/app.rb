require 'sinatra'
require 'rest-client'
require 'json'

before do
	content_type 'application/json'
end

get '/' do
  "Hello World!"
  
 
end


