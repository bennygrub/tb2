class AddSourceToTorchwordassignments < ActiveRecord::Migration
  def change
    add_column :torchwordassignments, :source, :string
  end
end
