class AddTempImageToUnit < ActiveRecord::Migration
  def change
    add_column :units, :temp_image, :string
  end
end
