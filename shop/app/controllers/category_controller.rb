class CategoryController < ApplicationController

  def index
     @categories = Category.all
  	 @category = Category.find(params[:id])
     @products = Product.where( category_id: params[:id] )
     @buyer = current_buyer
     @order_items = []
     @orders=Order.where(:buyer_id => current_buyer).first
     if buyer_signed_in? && Order.where(:buyer_id => current_buyer).first
        @order_items=OrderItem.where(order_id: @orders.id).all
     end

  end


end
