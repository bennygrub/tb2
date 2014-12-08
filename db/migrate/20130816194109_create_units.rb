class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :tbugunitid, null: false
      t.string :name, null: false
      t.string :publishedyear
      t.text :description
      t.boolean :isactive, default: false, null: false

      t.timestamps
    end
  end
end
