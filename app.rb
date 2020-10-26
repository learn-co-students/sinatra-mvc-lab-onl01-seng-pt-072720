require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb 
    end

    post '/' do
        params[:user_input]
    end
end