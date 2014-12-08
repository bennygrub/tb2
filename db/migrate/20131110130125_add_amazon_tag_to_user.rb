class AddAmazonTagToUser < ActiveRecord::Migration
  def change
    add_column :users, :amazon_tag, :string
  end
end
