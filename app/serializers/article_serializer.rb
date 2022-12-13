class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :img, :content, :user_id, :category_id
end
