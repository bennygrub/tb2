class AddRecommendedMediaToWidget < ActiveRecord::Migration
  def change
    add_column :widgets, :recommended_media, :string, null: false, default: "both"
  end
end
