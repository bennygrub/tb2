class CreateBadQueries < ActiveRecord::Migration
  def change
    create_table :bad_queries do |t|
      t.string :name
      t.string :medium
      t.integer :user_id

      t.timestamps
    end
  end
end
