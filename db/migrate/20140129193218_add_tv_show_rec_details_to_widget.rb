class AddTvShowRecDetailsToWidget < ActiveRecord::Migration
  def change
    add_column :widgets, :tv_show_rec_details, :text
  end
end
