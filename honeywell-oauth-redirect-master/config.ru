require './app'
run Sinatra::Application
set :protection, except: [ :json_csrf ]
