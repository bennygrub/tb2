class AddOldIdToPublisher < ActiveRecord::Migration
  def change
    add_column :publishers, :old_id, :integer
  end
end
