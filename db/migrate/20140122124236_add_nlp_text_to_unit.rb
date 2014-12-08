class AddNlpTextToUnit < ActiveRecord::Migration
  def change
    add_column :units, :nlp_text, :text
  end
end
