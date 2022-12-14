class BasketController < ApplicationController
    def index
        if request.post?
            @user = @user.product.create(params[:user_id], params[:product_id])
        end
    end
end
