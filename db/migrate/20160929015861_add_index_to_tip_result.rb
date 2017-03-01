class AddIndexToTipResult < ActiveRecord::Migration
  def change
    add_index :tip_results, [:match_id, :player_id], :unique=>true
  end
end
