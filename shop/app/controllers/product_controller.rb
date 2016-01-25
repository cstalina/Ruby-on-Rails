class ProductController < ApplicationController
  
  def index
       @products = Product.all
       @categories = Category.all
       @buyer = current_buyer
       @order_items = []
       @orders=Order.where(:buyer_id => current_buyer).first
       if buyer_signed_in? && Order.where(:buyer_id => current_buyer).first
        @order_items=OrderItem.where(order_id: @orders.id).all
      end
    end

    def show
         @product= Product.find(params[:id])
         @categories = Category.all
    end

end
