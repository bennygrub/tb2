class CreateWidgetTemplates < ActiveRecord::Migration
  def change
    create_table :widget_templates do |t|
      t.text :settings

      t.timestamps
    end
  end
end
