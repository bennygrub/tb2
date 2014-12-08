class CreateArtistassignments < ActiveRecord::Migration
  def change
    create_table :artistassignments do |t|
      t.integer :artist_id, null: false
      t.integer :unit_id, null: false
      t.integer :artisttype_id, null: false

      t.timestamps
    end
  end
end
