class AddGeoEngagementStatsToWidget < ActiveRecord::Migration
  def change
    add_column :widgets, :geo_engagement_stats, :text
  end
end
