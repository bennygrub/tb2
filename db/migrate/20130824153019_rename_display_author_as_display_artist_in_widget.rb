class RenameDisplayAuthorAsDisplayArtistInWidget < ActiveRecord::Migration
  def change 
    change_table :widgets do |t|
      t.rename :display_author, :display_artist
    end
  end
end
