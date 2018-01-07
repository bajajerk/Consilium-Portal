class HomeController < ApplicationController
before_action :authenticate_user!
  

   def profile
   	if(current_user.uniquecode.nil?)
	   	user=current_user
	   	@name=user.name
	   	@email=user.email
	else
   	  return redirect_to '/'
    end
   end



   def updateprofile
   	user=current_user
   	user.phone=params[:phone]
   	user.collegename=params[:collegename]
   	code=Time.now.to_i  
    user.uniquecode="CONS"+code.to_s
   	user.save
   	return redirect_to '/'
   end




	def index
		if(!current_user.uniquecode.nil?)
		  @uniquecode=current_user.uniquecode
		  @registered=true
	    else
	      @registered=false
	    end

	    if(!current_user.mockstock_id.nil?)
	    	@mockstock=true
	    else
	    	@mockstock=false
	    end

	end


end
