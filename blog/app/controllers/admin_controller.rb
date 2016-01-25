class AdminController < ApplicationController


  http_basic_authenticate_with :name => "Admin", :password => "gurlswhocode" 
  

  def index
    @articles=Article.all.order('created_at DESC')
  end

  def create
    @article=Article.new(article_params)
    @article.number_of_views =0
    if @article.save
        redirect_to action: "show", id: @article.id
    else
        render "new"
    end
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def edit
    @article = Article.find(params[:article_id])   
  end

  def delete
    @article = Article.find(params[:article_id])   
    @article.destroy
    redirect_to (:back)
  end

  def update
    @article = Article.find(params[:article_id])
    @article.title = params[:title]
    @article.content = params[:content]
    if @article.save
        redirect_to action: "show", id: @article.id
    else
        render "edit"
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def new

  end

  def add_comment
     comment = Comment.new 
     comment.content = params[:content]
     comment.name = "Admin"
     comment.article_id = params[:article_id]
     comment.save

     redirect_to(:back)
  end



end
