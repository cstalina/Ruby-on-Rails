class BorrowController < ApplicationController


  def create
  	borrow = Borrow.new
  	borrow.book_id = params[:id]
  	borrow.name = params[:name]
  	borrow.returning_date = params[:returning_date]
    
  	
  	if borrow.save
  			redirect_to "/library"
  		else
  			render :create
  		end
  end

  def show
  end
end
