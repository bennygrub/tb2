class AddTbuguseridToUser < ActiveRecord::Migration
  def change
    add_column :users, :tbuguserid, :string
  end
end
