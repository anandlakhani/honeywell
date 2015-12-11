require 'rest-client'
require 'sinatra'
require 'json'

res=RestClient.post 'http://www.rediff.com', params.to_json, :content_type => :json, :accept => :json
result = JSON.parse(res)
return result.to_json
