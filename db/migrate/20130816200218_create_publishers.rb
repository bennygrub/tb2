class CreatePublishers < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      t.string :tbugpublisherid, null: false
      t.string :name, null: false
      t.string :website
      t.text :description
      t.boolean :isactive, default: true, null: false
      t.integer :account_id

      t.timestamps
    end
  end
end
