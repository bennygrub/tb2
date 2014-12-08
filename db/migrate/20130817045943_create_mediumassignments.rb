class CreateMediumassignments < ActiveRecord::Migration
  def change
    create_table :mediumassignments do |t|
      t.integer :medium_id, null: false
      t.integer :unit_id, null: false

      t.timestamps
    end
  end
end
