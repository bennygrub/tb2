class CreateApiClients < ActiveRecord::Migration
  def change
    create_table :api_clients do |t|
      t.string :api_key
      t.integer :client_id
      t.string :client_name
      t.integer :call_limit_day

      t.timestamps
    end
  end
end
