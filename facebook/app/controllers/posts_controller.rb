class PostsController < ApplicationController

  def index
  	@posts=Post.all
  	#@posts = Post.where( "user_id !=?", current_user.id )
  	#@posts = Post.where.not( user_id: current_user.id)
    respond_to do |format|
        format.html
        format.json { render json: @posts.to_json }
    end

  end

  def profile

  	@posts = current_user.posts
    
  end

  
  
  def create
  	
  	post = Post.new
  	post.description = params[:description]
  	post.user_id = current_user.id
  	post.save


  	redirect_to(:back)

  end

  def add_comment

     comment = Comment.new 
     comment.content = params[:content]
     comment.user_id = current_user.id
     comment.post_id = params[:post_id]
     comment.save

     redirect_to(:back)

  end

  def delete

    @post = Post.find(params[:post_id])

    if @post.user_id == current_user.id
        @post.destroy
        redirect_to(:back)
        #flash[:error] = "the post was deleted!"
      else
        #flash[:error] = "Access Denied"
        redirect_to(:back)
      end

  end

  def show
        @post = Post.find(params[:id])
        
  end

  

end


