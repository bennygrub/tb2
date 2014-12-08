class AddUnitDetailsToWidget < ActiveRecord::Migration
  def change
    add_column :widgets, :unit_details, :text
  end
end
