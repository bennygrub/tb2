class AddDisplayTitleToWidget < ActiveRecord::Migration
  def change
    add_column :widgets, :display_title, :boolean, null: false, default: false
  end
end
