class AddPinterestToWidgets < ActiveRecord::Migration
  def change
    add_column :widgets, :pinterest, :boolean, null: false, default: true
  end
end
