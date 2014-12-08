class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :tbugartistid, null: false
      t.string :fullname, null: false
      t.string :lastname, null: false
      t.text :description
      t.boolean :isactive, default: true, null: false

      t.timestamps
    end
  end
end
