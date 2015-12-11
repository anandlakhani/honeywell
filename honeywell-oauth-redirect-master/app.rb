require 'rest-client'
require 'sinatra'
require 'json'

res=RestClient.post 'http://www.rediff.com', :content_type => :json, :accept => :json
result = JSON.parse(res)
puts result.to_json
