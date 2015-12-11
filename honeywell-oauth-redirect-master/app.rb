require 'rest-client'
require 'sinatra'
require 'json'

before do
	content_type 'application/json'
end

get '/redirect' do
  
  code = params[:code]
  auth = ENV['basic_auth']
  auth
  
end

