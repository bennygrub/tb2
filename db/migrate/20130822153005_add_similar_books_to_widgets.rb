class AddSimilarBooksToWidgets < ActiveRecord::Migration
  def change
    add_column :widgets, :similar_books, :text
  end
end
