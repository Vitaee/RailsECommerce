class OrderController < ApplicationController
    def index
        @item = Product.find(params[:id])
    end
end
