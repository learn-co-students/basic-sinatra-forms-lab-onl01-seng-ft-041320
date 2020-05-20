require 'sinatra/base'

class App < Sinatra::Base
    get '/newteam' do
        erb :newteam
    end
    post "/team" do
        names = ["Team Name", "Coach", "Point Guard", "Shooting Guard", "Small Forward", "Power Forward", "Center"]
        @data = params.map{|k,v| "#{names.shift}: #{v}"}
        erb :team
    end

end
