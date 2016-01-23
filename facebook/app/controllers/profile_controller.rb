class ProfileController < ApplicationController
  def edit
  	
  end

  def save
  	user=current_user
  	user.name = params[:name]
  	user.save

    redirect_to "/profile"
  end
end
