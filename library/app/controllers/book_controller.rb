class BookController < ApplicationController
  def index
  	@books = Book.all
  	@status =[]

    @books.each do |book|
        if Borrow.where(:book_id => book.id).first 
          @borrow= Borrow.where(:book_id => book.id).order('created_at DESC').first 
          @ret_date = @borrow.returning_date.to_date
          @now = DateTime.now.to_date
          if @ret_date > @now
          	@status[book.id] = "Borrowed" 
          else
          	@status[book.id] = "Available"
          end
        else
  	        @status[book.id] = "Available"
    	end
    end
end

  def create
  	book=Book.new
  	book.title=params[:title]
  	book.save

  	redirect_to "/library"
  end

  def show
  	@book = Book.find(params[:id])
    @borrows = Borrow.where(:book_id => @book.id).order('created_at DESC').all
  end

  def new
  end
end
