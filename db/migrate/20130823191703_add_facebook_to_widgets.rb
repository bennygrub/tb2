class AddFacebookToWidgets < ActiveRecord::Migration
  def change
    add_column :widgets, :facebook, :boolean, null: false, default: true
  end
end
