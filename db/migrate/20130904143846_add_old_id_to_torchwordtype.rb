class AddOldIdToTorchwordtype < ActiveRecord::Migration
  def change
    add_column :torchwordtypes, :old_id, :integer
  end
end
