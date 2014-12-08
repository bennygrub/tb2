class CreateTorchwordtypes < ActiveRecord::Migration
  def change
    create_table :torchwordtypes do |t|
      t.string :name, null: false
      t.text :description
      t.float :weight, default: 1.0, null: false
      t.boolean :isactive, default: true, null: false

      t.timestamps
    end
  end
end
