class OrderController < ApplicationController
    def index
        @basket = current_user.basket.all
        @total_price = 0
        @basket.each do |item|  @total_price += item.product.price end
    end

    def show
        @item = Product.find(params[:id])
    end

    def create
        '''
        Order status can be:
            - Pending
            - Packaged
            - Shipped
            - Cancelled
        '''

        if params[:product_id]
            @order = current_user.order.create(user_id:current_user.id, product_id:params[:product_id], order_status:"Pending")
            redirect_to "/", notice: 'Product successfully ordered!'
        end

        current_user.basket.all.each do |item|
            current_user.order.create(order_status:"Pending", user_id: current_user.id, product_id: item.product_id)
        end
        current_user.basket.all.destroy_all
        redirect_to "/", notice: 'Products successfully ordered!'
    end

    def order_details
        render "details"
    end
end
