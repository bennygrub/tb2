class AddAccessCountToWidget < ActiveRecord::Migration
  def change
    add_column :widgets, :access_count, :integer, null: :false, default: 0
  end
end
