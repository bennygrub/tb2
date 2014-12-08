class AddRemoteIpsToWidgets < ActiveRecord::Migration
  def change
    add_column :widgets, :remote_ips, :text
  end
end
