class AddOldIdToTorchword < ActiveRecord::Migration
  def change
    add_column :torchwords, :old_id, :integer
  end
end
