class AddTorchwordIndexToUnit < ActiveRecord::Migration
  def change
    add_column :units, :torchword_index, :text
  end
end
