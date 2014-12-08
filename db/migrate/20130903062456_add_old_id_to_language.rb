class AddOldIdToLanguage < ActiveRecord::Migration
  def change
    add_column :languages, :old_id, :integer
  end
end
