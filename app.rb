require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        word_from_user = params[:user_phrase]
        @piglatinizer = PigLatinizer.new.piglatinize(word_from_user)
        
        erb :results
    end
end