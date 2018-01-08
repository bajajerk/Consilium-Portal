class Teamcreated < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.teamcreated.mockstock.subject
  #
  def mockstock email, name
    @name=name
    mail to: email
  end

  def tradeverse email, name
    @name=name
    mail to: email
  end  

  def casechallenge email, name
    @name=name
    mail to: email
  end 

   def shatranj email, name
    @name=name
    mail to: email
  end

  def kaizen email, name
    @name=name
    mail to: email
  end

  def bcase email, name
     @name=name
     mail to: email
   end


  def newusermade email , name , eventname
    @name=name
    @email=email
    @eventname=eventname
    mail to: email
  end



end
