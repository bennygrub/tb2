class AddVideoRecDetailsToWidget < ActiveRecord::Migration
  def change
    add_column :widgets, :video_rec_details, :text
  end
end
