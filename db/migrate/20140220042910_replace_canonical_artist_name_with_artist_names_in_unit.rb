class ReplaceCanonicalArtistNameWithArtistNamesInUnit < ActiveRecord::Migration
  def change
    remove_column :units, :canonical_artist_name
    add_column :units, :artist_names, :string, array: true, default: []
  end
end
