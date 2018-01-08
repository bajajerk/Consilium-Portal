class MockstocksController < ApplicationController
 before_action :authenticate_user!, except: [:index]


  # GET /mockstocks
  # GET /mockstocks.json
  def index
  end

  def createteam
    @usermail=current_user.email
  end


  def saveteam
    team=Mockstock.new
    team.name=params[:teamname]
    user1=current_user

    if (user1.mockstock_id.nil?)
    team.users<<user1
    else
      return redirect_to '/home/errorpage'
    end

    if (params[:email2].length>0)
      email2=params[:email2]
      user2=User.find_by_email(email2)
        if (user2 && user2.mockstock_id.nil?)
             team.users<<user2
        elsif (user2 && !user2.mockstock_id.nil?)
             return redirect_to '/home/errorpage'    
        else
             newUser2=User.new
             newUser2.email=email2
             newUser2.name=params[:name2]
             newUser2.collegename=params[:collegename2]
             newUser2.phone=params[:phone2]
             newUser2.password='conspassword'
             newUser2.save
             team.users<<newUser2
             eventname='Mockstock'
             Teamcreated.newusermade(newUser2.email,newUser2.name,eventname).deliver_now
        end
    end

    team.save
    Teamcreated.mockstock(user1.email,user1.name).deliver_now
    return redirect_to '/home/index'
  end

end
