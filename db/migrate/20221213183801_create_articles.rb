class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :img
      t.text :content
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
