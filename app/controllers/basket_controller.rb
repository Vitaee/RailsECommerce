class BasketController < ApplicationController
    def index
        @basket = current_user.basket.all
        @total_price = 0
        @basket.each do |item|  @total_price += item.product.price end
    end

    def create
        @basket = current_user.basket.create(user_id:current_user.id, product_id:params[:id])
        redirect_to "/", notice: 'Product successfully added to your basket!'
    end 

    def destroy
        @basket = current_user.basket.find(params[:id]).destroy
        redirect_to "/basket", notice: 'Product successfully deleted from your basket!'
    end
end
