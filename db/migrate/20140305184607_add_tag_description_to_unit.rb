class AddTagDescriptionToUnit < ActiveRecord::Migration
  def change
    add_column :units, :tag_description, :text
  end
end
