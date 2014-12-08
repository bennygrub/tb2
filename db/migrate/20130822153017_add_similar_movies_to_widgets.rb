class AddSimilarMoviesToWidgets < ActiveRecord::Migration
  def change
    add_column :widgets, :similar_movies, :text
  end
end
