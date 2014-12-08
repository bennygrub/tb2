class AddHistoryHashesToWidget < ActiveRecord::Migration
  def change
    rename_column :widgets, :remote_ips, :click_ips
    add_column :widgets, :view_ips, :text
    add_column :widgets, :share_history, :text
    add_column :widgets, :share_ips, :text
  end
end
