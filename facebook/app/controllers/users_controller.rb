class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

 def add_comment

     comment = Comment.new 
     comment.content = params[:content]
     comment.user_id = current_user.id
     comment.post_id = params[:post_id]
     comment.save

     redirect_to(:back)

  end

  def add_friend
    friendship = Friendship.new
    friendship.friend_id=params[:user_id]
    friendship.user_id=current_user
    friendship.save

    redirect_to(:back)

  end
end
