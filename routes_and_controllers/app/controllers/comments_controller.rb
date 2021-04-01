class CommentsController < ApplicationController
    def index
        comments = Comment.all 
        render json: comments
    end

    def create
        comment = Comment.new(artwork_share_params)
        if comment.save
            render json: comment
        else 
             render json: comment.errors.full_messages, status: 422
        end 
    end

    #  def show
    #     comment = Comment.find(params[:id])
    #     render json: comment
    # end


    def destroy
        comment = Comment.find(params[:id])

        if comment.destroy
            render json: comment
        else 
            render json: "can't destroy this comment"
        end 

    end 

    private 

    def comment_params
        params.require(:comments).permit(:user_id, :artwork_id) 
    end 
end