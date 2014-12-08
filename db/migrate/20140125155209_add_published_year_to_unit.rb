class AddPublishedYearToUnit < ActiveRecord::Migration
  def change
    add_column :units, :published_year, :integer
  end
end
