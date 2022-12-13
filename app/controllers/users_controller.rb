class UsersController < ApplicationController
    def index
        users = User.all
        render json: users , except: [:created_at, :updated_at]
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user
        else
            render json: {error:"User not found/Not Authorized"}
        end
    end

    def create 
        user = User.create(user_params)
        render json: user, status: :created
    end

    private 

    def article_params
        params.permit(:fname, :lname, :email,:password)
    end
end
