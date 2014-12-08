class AddAmazonTagToWidget < ActiveRecord::Migration
  def change
    add_column :widgets, :amazon_tag, :string
  end
end
