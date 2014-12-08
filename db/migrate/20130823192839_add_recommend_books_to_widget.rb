class AddRecommendBooksToWidget < ActiveRecord::Migration
  def change
    add_column :widgets, :recommend_books, :boolean, null: false, default: true
  end
end
