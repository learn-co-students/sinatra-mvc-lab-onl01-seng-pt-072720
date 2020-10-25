require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @analyzed_phrase = PigLatinizer.new
    
        erb :result
    end
end