class AddSimilarTvShowsToWidget < ActiveRecord::Migration
  def change
    add_column :widgets, :similar_tv_shows, :text
  end
end
