class Register < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.register.success.subject
  #
  def success name , email , uniquecode
    @name = name
    @email = email
    @uniquecode=uniquecode

    mail to: email
  end

   def refermail email , usermail
   puts "mail called"
   @email = email
   @usermail=usermail
   mail to:email
   end
   
end
