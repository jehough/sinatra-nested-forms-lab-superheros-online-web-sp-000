require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      
      @team = Team.create_from_params(params["team"])
      binding.pry
      @heroes = Hero.all

      erb :team
    end
end
