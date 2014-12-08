class AddMatcherStatusLedgerToWidget < ActiveRecord::Migration
  def change
    add_column :widgets, :matcher_status_ledger, :text
  end
end
