class DisplayTitleDefaultIsTrueForWidget < ActiveRecord::Migration
  def up
    change_column :widgets, :display_title, :boolean, default: true
  end

  def down
    change_column :widgets, :display_title, :boolean, default: false
  end
end
