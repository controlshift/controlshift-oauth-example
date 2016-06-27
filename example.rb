require 'bundler'
require 'bundler/setup'
require 'dotenv'
require 'json'
require 'oauth2'


Dotenv.load

client = OAuth2::Client.new(ENV['CLIENT_ID'], ENV['CLIENT_SECRET'], :site => ENV['SITE_URL'])
authorization_url = client.auth_code.authorize_url(:redirect_uri => ENV['REDIRECT_URI'])

puts "Visit: #{authorization_url} to get a code"
puts "Enter Code:"
code = gets.chomp

token = client.auth_code.get_token(code, :redirect_uri => ENV['REDIRECT_URI'])
response = token.get('/api/v1/organisation', :headers => { 'Accept' => 'application/json' })
hash = JSON.parse(response.body)
puts hash.inspect

