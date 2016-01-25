class PublicController < ApplicationController
  
    before_filter :set_views, :only=>[:show]
  def index
  	@articles=Article.all.order('created_at DESC')
  end


  def filter
    query= params[:query]
    @articles=Article.all.where("title like :be_like", {:be_like => "#{query}%"})
  end

  def show
  	@article = Article.find(params[:id])
  end

  def add_comment
  	 comment = Comment.new 
     comment.content = params[:content]
     comment.name = params[:name]
     comment.article_id = params[:article_id]
     comment.save

     redirect_to(:back)
  end

  def set_views
    @article = Article.find(params[:id])
    @article.update_attribute "number_of_views", @article.number_of_views += 1
  end
end
