# app.rb

require 'sinatra'
require 'logger' # debug
require 'net/http'

configure do
  set :bind, '0.0.0.0'
  set :port, '2014'
  set :logger, Logger.new(STDOUT)
end

get '/lookup' do
  uri = URI("http://www.cybermova.com/cgi-bin/oluaen.pl")
  encoded = params['word'].encode('cp1251')
  response = Net::HTTP.post_form(uri, 'Word' => encoded, 'UaEnBtn' => 'Ua --> En')
  response.body =~ /<p>Input Ukrainian/im
  
  @answer = $`.force_encoding('cp1251').encode('utf-8')

  haml :lookup
end

