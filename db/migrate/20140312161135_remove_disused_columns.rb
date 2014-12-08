class RemoveDisusedColumns < ActiveRecord::Migration
  def change
    remove_column :units, :publishedyear
    remove_column :units, :temp_image
    remove_column :users, :widget_defaults
    remove_column :users, :widget_index
  end
end
