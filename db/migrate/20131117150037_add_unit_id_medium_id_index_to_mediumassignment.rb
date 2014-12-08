class AddUnitIdMediumIdIndexToMediumassignment < ActiveRecord::Migration
  def change
    add_index :mediumassignments, [:unit_id, :medium_id]
  end
end
