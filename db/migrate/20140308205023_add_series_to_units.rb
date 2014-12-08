class AddSeriesToUnits < ActiveRecord::Migration
  def change
    add_column :units, :series, :string
  end
end
