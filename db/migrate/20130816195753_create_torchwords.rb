class CreateTorchwords < ActiveRecord::Migration
  def change
    create_table :torchwords do |t|
      t.integer :torchwordtype_id, null: false
      t.string :name, null: false
      t.text :description
      t.boolean :isactive, default: true, null: false

      t.timestamps
    end
  end
end
