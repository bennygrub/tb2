class RenameColumnforClientUnit < ActiveRecord::Migration
  def change
  	rename_column :client_units, :client_id, :api_client_id
  end
end
