class CreateLanguageassignments < ActiveRecord::Migration
  def change
    create_table :languageassignments do |t|
      t.integer :language_id, null: false
      t.integer :unit_id, null: false

      t.timestamps
    end
  end
end
