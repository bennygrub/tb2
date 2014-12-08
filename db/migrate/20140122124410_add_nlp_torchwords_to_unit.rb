class AddNlpTorchwordsToUnit < ActiveRecord::Migration
  def change
    add_column :units, :nlp_torchwords, :text
  end
end
