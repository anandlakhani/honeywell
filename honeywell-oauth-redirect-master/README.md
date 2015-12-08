## Honeywell Sandbox OAuth

This will take you through the OAuth flow, store device info into a database and display current status. You can use the code as a representation of how to do some of the simple tasks in the API. At the very least the enrollment/authorization flow.

Gems used:

* Rest-Client
* Sinatra

Setup (local):

1. Pull repo
2. Bundle install
3. Create config.yml in the root, or deploy to Heroku and add the necessary environment config

  ```ruby
  development:
    redirect_uri: 'https://yourdomain.com/redirect'
    basic_auth: 'base64ClientIDandSecret'
  ```


To run (locally):

1. Depending on where/how you run it, you may have to change the bind in app.rb. Just remove the line.
2. ruby app.rb
3. Talk to someone with Honeywell Admin access to add the redirect URL to your Application ID