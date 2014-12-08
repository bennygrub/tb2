class AddFriendMatcherToWidget < ActiveRecord::Migration
  def change
    add_column :widgets, :friend_matcher, :boolean, null: false, default: true
  end
end
