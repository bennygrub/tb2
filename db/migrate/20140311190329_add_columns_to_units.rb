class AddColumnsToUnits < ActiveRecord::Migration
  def change
    add_column :units, :similar_books, :text
    add_column :units, :similar_movies, :text
    add_column :units, :similar_tv, :text
    add_column :units, :recommendations_updated, :boolean, default: false
  end
end
