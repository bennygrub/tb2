class AddOldIdToUnit < ActiveRecord::Migration
  def change
    add_column :units, :old_id, :integer
  end
end
