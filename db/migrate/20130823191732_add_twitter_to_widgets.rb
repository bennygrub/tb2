class AddTwitterToWidgets < ActiveRecord::Migration
  def change
    add_column :widgets, :twitter, :boolean, null: false, default: true
  end
end
