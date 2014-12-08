class AddUserIdToWidgetTemplate < ActiveRecord::Migration
  def change
    add_column :widget_templates, :user_id, :integer
  end
end
