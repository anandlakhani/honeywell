require 'rest-client'
require 'sinatra'
require 'json'

begin
  RestClient.get 'http://rediff.com'
rescue => e
  e.response
end

