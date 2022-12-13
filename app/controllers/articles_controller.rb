class ArticlesController < ApplicationController
    def index
        articles = Article.all
        render json: articles , except: [:updated_at]
    end

    def show
        article = Article.find_by(id: params[:id])
        if article
            render json: article, except: [:updated_at]
        else
            render json: {error:"Article not found"}
        end
    end

    def create 
        article = Article.create(article_params)
        render json: article, status: :created
    end

    def destroy 
        article = Article.find_by(params[:id])
        if article 
            article.destroy
            head :no_content
        else
            render json:{ error:"Article not found" }, status: :not_found
        end
    end

    private 

    def article_params
        params.permit(:title, :img, :content, :user_id, :category_id)
    end
end
