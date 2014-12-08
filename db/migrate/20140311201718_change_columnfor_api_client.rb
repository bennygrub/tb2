class ChangeColumnforApiClient < ActiveRecord::Migration
  def change
  	remove_column :api_clients, :client_id
  	add_column :api_clients, :client_id, :string
  end
end
