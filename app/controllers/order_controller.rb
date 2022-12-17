class OrderController < ApplicationController
    def index
        @basket = current_user.basket.all
        @total_price = 0
        @basket.each do |item|  @total_price += item.product.price end
    end

    def show
        @item = Product.find(params[:id])
    end
end
