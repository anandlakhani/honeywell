require './app'
run Sinatra::Application
redirect_uri: 'https://honeywell.herokuapp.com/redirect'
basic_auth: 'base64ClientIDandSecret'
