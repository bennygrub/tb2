class CreateIpAddresses < ActiveRecord::Migration
  def change
    create_table :ip_addresses do |t|
      t.string :ip
      t.string :country_code
      t.string :country_name
      t.string :region_code
      t.string :region_name
      t.string :city
      t.string :zipcode
      t.string :latitude
      t.string :longitude
      t.string :metro_code
      t.string :areacode

      t.timestamps
    end
    add_index :ip_addresses, :ip, unique: true
  end
end
