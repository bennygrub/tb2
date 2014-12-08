class ChangeIpHistoryColumnsInWidget < ActiveRecord::Migration
  def change
    rename_column :widgets, :click_ips, :new_click_ips
    rename_column :widgets, :share_ips, :new_share_ips
    rename_column :widgets, :view_ips, :new_view_ips

    add_column :widgets, :seen_click_ips, :text
    add_column :widgets, :seen_share_ips, :text
    add_column :widgets, :seen_view_ips, :text
  end
end
