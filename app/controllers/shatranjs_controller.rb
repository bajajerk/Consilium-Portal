class ShatranjsController < ApplicationController
  before_action :authenticate_user!, except: [:index]


  # GET /mockstocks
  # GET /mockstocks.json
  def index
  end

  def createteam
  end


  def saveteam
    team=Shatranj.new
    team.name=params[:teamname]
    username1=params[:username1]
    user1=User.find_by_uniquecode(username1)

    if (user1 && user1.shatranj_id.nil?)
    team.users<<user1
    else
      return redirect_to '/home/errorpage'
    end

    if (params[:username2].length>0)
      username2=params[:username2]
      user2=User.find_by_uniquecode(username2)
        if (user2 && user2.shatranj_id.nil?)
             team.users<<user2
        else
             return redirect_to '/home/errorpage'
    end

    end

    team.save
    Teamcreated.shatranj(user1.email,user1.name).deliver_now
    return redirect_to '/home/index'
  end

end