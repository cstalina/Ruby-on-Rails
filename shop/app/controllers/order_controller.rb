class OrderController < ApplicationController


  def show
    @categories=Category.all
    @products=Product.all
    @order_items = []
    if Order.where(:buyer_id => current_buyer).first
      @order = Order.where(:buyer_id => current_buyer).first
      @order_items = OrderItem.where(:order_id => @order.id).all


      @sum=0
      @items =[]
      @products.each do |product|
        if OrderItem.where(:order_id => @order.id, :product_id => product.id).first   
          @items << product    
          @sum=@sum + product.price
      end
    end
  end

  end

  def add
    if Order.where(:buyer_id => current_buyer).first
      @order = Order.where(:buyer_id => current_buyer).first
      if !OrderItem.where(:order_id => @order.id, :product_id => params[:id]).first
            item= OrderItem.new
            item.product_id=params[:id]
            item.order_id=@order.id
            item.save
            redirect_to "/checkout" 
          else
            flash.now[:notice] = "The item has already been added to you cart !"
            redirect_to (:back)
          end
    else
      @order=Order.new
      @order.buyer_id=current_buyer.id
      @order.save
       if !OrderItem.where(:order_id => @order.id, :product_id => params[:id]).first
            item= OrderItem.new
            item.product_id=params[:id]
            item.order_id=@order.id
            item.save
            redirect_to "/checkout" 
      else
           
           flash.keep[:notice] = "The item has already been added to you cart !"
           redirect_to (:back)
      end
    end 

  end


  def remove
    @order = Order.where(:buyer_id => current_buyer).first
    @order_item = @order.order_items.where(:product_id => params[:id]).first
    @order_item.destroy
    @order_items = @order.order_items
    redirect_to (:back)
  end

  def order_paid
    @order = Order.where(:buyer_id => current_buyer).first
    @order.destroy
    redirect_to "/checkout/success"

  end
  def success
    @categories=Category.all
    @products=Product.all
  end


end
