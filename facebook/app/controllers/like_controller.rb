class LikeController < ApplicationController
  
  def create
  	like = Like.new
  	like.post_id = params[:post_id]
  	like.user_id = current_user.id
  	like.save

  	redirect_to(:back)

  end

  def destroy

  	@like = Like.find_by_post_id_and_user_id(params[:post_id],current_user.id)
	@like.destroy
    redirect_to(:back)


  end

end
