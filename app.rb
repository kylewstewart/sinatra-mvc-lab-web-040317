require_relative 'config/environment'
require_relative 'models/pig_latinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pig = PigLatinizer.new
    @results_phrase = pig.to_pig_latin(params[:user_phrase])

    erb :results
  end
end
