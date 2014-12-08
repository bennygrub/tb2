class AddNameIndexToUnit < ActiveRecord::Migration
  def change
    add_index :units, :name
  end
end
