#!/usr/bin/env ruby
require 'rack'

require './app'
run Sinatra::Application

#Rack::Handler::WEBrick.run(
#  RequestController.new,
#  :Port => ENV['PILEVIEWS_PORT'],
#  :Host => '0.0.0.0'
#)
