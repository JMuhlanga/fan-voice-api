class CommentsController < ApplicationController
    def index
        comments = Comment.all
        render json: comments , except: [:created_at, :updated_at]
    end

    def show
        comment = Comment.find_by(id: params[:id])
        if user
            render json: comment
        else
            render json: {error:"Comment not found"}
        end
    end

    def create 
        comment = Comment.create(comment_params)
        render json: comment, status: :created
    end

    private 

    def comment_params
        params.permit(:user_id, :article_id, :comment_content)
    end
end
