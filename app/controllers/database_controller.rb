class DatabaseController < ApplicationController
before_action :authenticate_admin!

  def index
  	@mockstocks=Mockstock.all
  	@kaizens=Kaizen.all
  	@casechallenges=Casechallenge.all
  	@bcases=Bcase.all
  	@shatranjs=Shatranj.all
  end
  
end
