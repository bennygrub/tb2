class AddTrigramIndexToUnits < ActiveRecord::Migration
  def up
    #enable_extension "pg_trgm"

    #execute "CREATE INDEX ON units USING gin (name gin_trgm_ops)"
  end
end
