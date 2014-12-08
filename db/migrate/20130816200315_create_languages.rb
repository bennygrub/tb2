class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :name, null: false
      t.string :ISO639_1
      t.string :ISO639_2

      t.timestamps
    end
  end
end
