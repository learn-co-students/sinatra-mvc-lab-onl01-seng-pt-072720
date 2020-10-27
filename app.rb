require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do

        new_instance = PigLatinizer.new
        @string = new_instance.pig_latin(params[:user_phrase])  
        erb :piglatinize
    end
end