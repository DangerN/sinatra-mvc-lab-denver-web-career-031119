require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
    # binding.pry
  end

  post '/piglatinize' do
    # binding.pry
    @piglatinized = PigLatinizer.new.piglatinize(params[:user_phrase])
    erb :piglatin
  end
end
