class CreateClientUnits < ActiveRecord::Migration
  def change
    create_table :client_units do |t|
      t.integer :client_id
      t.integer :unit_id

      t.timestamps
    end
  end
end
