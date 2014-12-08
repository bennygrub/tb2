class AddTextDescriptionToUnit < ActiveRecord::Migration
  def change
    add_column :units, :text_description, :text
  end
end
