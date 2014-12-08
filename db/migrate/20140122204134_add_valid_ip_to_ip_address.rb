class AddValidIpToIpAddress < ActiveRecord::Migration
  def change
    add_column :ip_addresses, :valid_ip, :boolean, default: true
  end
end
