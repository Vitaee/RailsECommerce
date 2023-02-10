class CommentsController < ApplicationController

    def new
        @comment = Comment.new
    end

    def create
        @p = Product.find(params[:comment][:product])
        @comment = Comment.new(body: params[:comment][:body], product: @p, user: current_user )
        if @comment.save
            redirect_to "/", notice: 'Your comment was successfully posted!'
        else
            redirect_to "/", notice: "Your comment wasn't posted!"
        end
    end

    def create_reply
        @com = Comment.find(params[:id])
        @reply = Reply.new(reply_body: params[:reply][:reply_body], comment: @com, user:current_user)
        if @reply.save
            redirect_to "/", notice: 'Your reply was successfully posted!'
        else
            redirect_to "/", notice: "Your reply wasn't posted!"
        end
        
    end
    
end