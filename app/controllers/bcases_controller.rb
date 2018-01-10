class BcasesController < ApplicationController
 before_action :authenticate_user!, except: [:index]
  
  def createteam
    @usermail=current_user.email
  end

  def index
  end

  def saveteam
  team=Bcase.new
  team.name=params[:teamname]
  user1=current_user

    if (user1.bcase_id.nil?)
    team.users<<user1
    else
      return redirect_to '/home/errorpage'
    end

    if (params[:email2].length>0)
      email2=params[:email2]
      user2=User.find_by_email(email2)
        if (user2 && user2.bcase_id.nil?)
             team.users<<user2
        elsif (user2 && !user2.bcase_id.nil?)
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
             eventname='NETAJI SUBHAS BUSINESS CASE'
             Teamcreated.newusermade(newUser2.email,newUser2.name,eventname).deliver_now
        end
    end

    if (params[:email3].length>0)
      email3=params[:email3]
      user3=User.find_by_email(email3)
        if (user3 && user3.bcase_id.nil?)
             team.users<<user3
        elsif (user3 && !user3.bcase_id.nil?)
             return redirect_to '/home/errorpage'    
        else
             newUser3=User.new
             newUser3.email=email3
             newUser3.name=params[:name3]
             newUser3.collegename=params[:collegename3]
             newUser3.phone=params[:phone3]
             newUser3.password='conspassword'
             newUser3.save
             team.users<<newUser3
             eventname='NETAJI SUBHAS BUSINESS CASE'
             Teamcreated.newusermade(newUser3.email,newUser3.name,eventname).deliver_now
        end
    end



    team.save
    Teamcreated.bcase(user1.email,user1.name).deliver_now
    return redirect_to '/home/index'
  end

end
