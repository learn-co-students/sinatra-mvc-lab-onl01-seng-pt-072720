require_relative 'config/environment'
require_relative './models/piglatinizer.rb'

class App < Sinatra::Base

    get "/" do
        erb :user_input
    end

    post '/piglatinize' do
        piglatin = PigLatinizer.new
        @piglatin_translation = piglatin.piglatinize(params[:user_phrase])
        erb :user_input
      end
end