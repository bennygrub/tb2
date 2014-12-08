class AddOldIdToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :old_id, :integer
  end
end
