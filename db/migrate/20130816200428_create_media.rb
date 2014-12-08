class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :name, null: false
      t.text :description
      t.boolean :isactive, default: true, null: false

      t.timestamps
    end
  end
end
