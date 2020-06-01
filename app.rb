require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    @team = Team.new(params["name"], params["coach"],params["pg"],params["sg"],params["sf"],params["pf"],params["c"])
    erb :newteam
  end

  post '/team' do
    
    erb :team
  end
  
  
  
  
  
  
end
