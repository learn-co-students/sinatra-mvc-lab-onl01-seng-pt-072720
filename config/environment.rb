ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app'
Dir["./models/*.rb"].each {|file| require file }
# require_all 'models'