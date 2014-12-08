class AddCanonicalArtistNameAndTorchwordCountToUnit < ActiveRecord::Migration
  def change
    add_column :units, :canonical_artist_name, :string
    add_column :units, :torchword_count, :integer, default: 0
  end
end
