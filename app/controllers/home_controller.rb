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

	    if(!current_user.bcase_id.nil?)
	    	@bcase=true
	    else
	    	@bcase=false
	    end

	     if(!current_user.kaizen_id.nil?)
	    	@kaizen=true
	    else
	    	@kaizen=false
	    end

	     if(!current_user.casechallenge_id.nil?)
	    	@casechallenge=true
	    else
	    	@casechallenge=false
	    end

	    if(!current_user.shatranj_id.nil?)
	    	@shatranj=true
	    else
	    	@shatranj=false
	    end


	    if(!current_user.tradeverse_id.nil?)
	    	@tradeverse=true
	    else
	    	@tradeverse=false
	    end



	end


	def errorpage
	end
	


end
