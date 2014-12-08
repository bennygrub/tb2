class RemoveLocationsFromWidget < ActiveRecord::Migration
  def change
    remove_column :widgets, :locations, :text
  end
end
