class AddDisplayImageToWidget < ActiveRecord::Migration
  def change
    add_column :widgets, :display_image, :boolean, null: false, default: false
  end
end
