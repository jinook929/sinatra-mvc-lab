require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    # "#{PigLatinizer.new.piglatinize(params[:user_phrase])}"
    "<h1>#{params[:user_phrase]}</h1>\n<h1>#{PigLatinizer.new.piglatinize(params[:user_phrase])}</h1>"
  end
end