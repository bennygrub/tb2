class AddRecommendTvShowsToWidget < ActiveRecord::Migration
  def change
    add_column :widgets, :recommend_tv_shows, :boolean, default: true, null: false
  end
end
