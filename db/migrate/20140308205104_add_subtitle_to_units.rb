class AddSubtitleToUnits < ActiveRecord::Migration
  def change
    add_column :units, :subtitle, :string
  end
end
