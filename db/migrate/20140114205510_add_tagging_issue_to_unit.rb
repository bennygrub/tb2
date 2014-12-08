class AddTaggingIssueToUnit < ActiveRecord::Migration
  def change
    add_column :units, :tagging_issue, :boolean, default: false
  end
end
