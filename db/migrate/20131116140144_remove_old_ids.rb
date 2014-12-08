class RemoveOldIds < ActiveRecord::Migration
  def change
    remove_column :artists, :old_id
    remove_column :languages, :old_id
    remove_column :publishers, :old_id
    remove_column :torchwords, :old_id
    remove_column :torchwordtypes, :old_id
    remove_column :units, :old_id
  end
end
