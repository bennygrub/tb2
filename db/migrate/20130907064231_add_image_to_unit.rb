class AddImageToUnit < ActiveRecord::Migration
  def change
    add_column :units, :image, :string
  end
end
