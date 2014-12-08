class AddWidgetDefaultsToUser < ActiveRecord::Migration
  def change
    add_column :users, :widget_defaults, :text
  end
end
