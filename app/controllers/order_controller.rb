class OrderController < ApplicationController
    def index
        @basket = current_user.basket.all
    end

    def show
        @item = Product.find(params[:id])
    end
end
