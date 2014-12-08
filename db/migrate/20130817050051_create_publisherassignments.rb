class CreatePublisherassignments < ActiveRecord::Migration
  def change
    create_table :publisherassignments do |t|
      t.integer :publisher_id, null: false
      t.integer :unit_id, null: false

      t.timestamps
    end
  end
end
