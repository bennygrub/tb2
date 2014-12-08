class AddBookRecDetailsToWidget < ActiveRecord::Migration
  def change
    add_column :widgets, :book_rec_details, :text
  end
end
