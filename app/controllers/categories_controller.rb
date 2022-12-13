class CategoriesController < ApplicationController
    def index
        categories = Category.all
        render json: categories , except: [:created_at, :updated_at]
    end

    def show
        category = Category.find_by(id: params[:id])
        if category
            render json: category, include: :articles
        else
            render json: {error:"Comment not found"}
        end
    end
end
