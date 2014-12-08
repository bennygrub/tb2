class CreateWidgets < ActiveRecord::Migration
  def change
    create_table :widgets do |t|
      t.integer :user_id, null: false
      t.integer :unit_id, null: false
      t.string :tbugwidgetid, null: false
      t.text :click_history
      t.text :view_history
      t.string :home
      t.text :locations

      t.timestamps
    end
  end
end
