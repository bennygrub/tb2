class RemoveRecommendedMediaFromWidget < ActiveRecord::Migration
  def change
    remove_column :widgets, :recommended_media, :string
  end
end
