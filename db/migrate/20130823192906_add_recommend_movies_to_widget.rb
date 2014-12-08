class AddRecommendMoviesToWidget < ActiveRecord::Migration
  def change
    add_column :widgets, :recommend_movies, :boolean, null: false, default: true
  end
end
