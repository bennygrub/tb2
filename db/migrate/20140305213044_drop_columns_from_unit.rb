class DropColumnsFromUnit < ActiveRecord::Migration
  def change
  	remove_column :units, :nlp_text
  	remove_column :units, :nlp_torchwords
  	remove_column :units, :text_description
  	remove_column :units, :tag_description
  	remove_column :units, :genres
  end
end
