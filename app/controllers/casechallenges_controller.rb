class CasechallengesController < ApplicationController
 before_action :authenticate_user!, except: [:index]
  
  def createteam
  end

  def index
  end

  def saveteam
  team=Casechallenge.new
  team.name=params[:teamname]
  username1=params[:username1]
  user1=User.find_by_uniquecode(username1)

  if (user1 && user1.casechallenge_id.nil?)
  team.users<<user1
  else
    return redirect_to '/home/errorpage'
  end

  if (params[:username2].length>0)
    username2=params[:username2]
    user2=User.find_by_uniquecode(username2)
      if (user2 && user2.casechallenge_id.nil?)
           team.users<<user2
      else
           return redirect_to '/home/errorpage'
      end
  end

  if (params[:username3].length>0)
    username3=params[:username3]
    user3=User.find_by_uniquecode(username3)
      if (user3 && user3.casechallenge_id.nil?)
           team.users<<user3
      else
           return redirect_to '/home/errorpage'
      end
  end

  team.save
  Teamcreated.casechallenge(user1.email,user1.name).deliver_now
  return redirect_to '/home/index'
  end
 
end