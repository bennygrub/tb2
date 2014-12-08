class RemoveHomeFromWidgets < ActiveRecord::Migration
  def change
    remove_column :widgets, :home, :string
  end
end
