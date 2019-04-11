require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/newteam' do
    @name = params[:team_name]
    @coach = params[:coach]
    @pg = params[:pg]
    @sg = params[:sg]
    @small_forward = params[:small_forward]
    @power_forward = params[:power_forward]
    @center = params[:center]

    erb :team
  end
end
