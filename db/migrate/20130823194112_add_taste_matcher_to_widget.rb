class AddTasteMatcherToWidget < ActiveRecord::Migration
  def change
    add_column :widgets, :taste_matcher, :boolean, null: false, default: true
  end
end
