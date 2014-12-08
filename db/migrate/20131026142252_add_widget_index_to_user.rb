class AddWidgetIndexToUser < ActiveRecord::Migration
  def change
    add_column :users, :widget_index, :text
  end
end
