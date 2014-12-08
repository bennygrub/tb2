class AddAccountTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :account_type, :integer, default: 0, null: false
  end
end
