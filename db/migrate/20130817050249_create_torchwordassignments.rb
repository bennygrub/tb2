class CreateTorchwordassignments < ActiveRecord::Migration
  def change
    create_table :torchwordassignments do |t|
      t.integer :torchword_id, null: false
      t.integer :torchwordtype_id, null: false
      t.integer :unit_id, null: false
      t.boolean :isdominant, default: false, null: false

      t.timestamps
    end
  end
end
