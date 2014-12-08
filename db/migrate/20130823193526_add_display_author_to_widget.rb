class AddDisplayAuthorToWidget < ActiveRecord::Migration
  def change
    add_column :widgets, :display_author, :boolean, null: false, default: false
  end
end
