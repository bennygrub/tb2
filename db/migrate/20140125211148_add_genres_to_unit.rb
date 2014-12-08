class AddGenresToUnit < ActiveRecord::Migration
  def change
    add_column :units, :genres, :text
  end
end
