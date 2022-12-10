class HomeController < ApplicationController
    def index
        if params[:title] || params[:brand]
            
            parameter = filter_params

            if parameter["title"]
                @pagy, @products = pagy( Product.search_by_title(parameter["title"]))
            else
                @pagy, @products = pagy( Product.search_by_brand(parameter["brand"])) 
            end

        else
            @pagy, @products = pagy(Product.all)
        end
    end


    private 

    def filter_params
        params.delete_if{|key,value| value.blank? || value=="home" || value=="index" || value=="---" || value=="Search"}
    end
end
