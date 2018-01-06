class MockstocksController < ApplicationController
 before_action :authenticate_user!


  # GET /mockstocks
  # GET /mockstocks.json
  def index
  end

  def createteam
  end


  def saveteam
    team=Mockstock.new
    team.name=params[:teamname]
    username1=params[:username1]
    user1=User.find_by_uniquecode(username1)
    team.users<<user1
    if (params[:username2].length>0)
      username2=params[:username2]
      user2=User.find_by_uniquecode(username2)
      team.users<<user2
    end

    team.save
    return redirect_to '/home/index'
  end

end
