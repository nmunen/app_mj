class AddIndexToTip < ActiveRecord::Migration
  def change
    add_index :tips, [:match_id, :player_id], :unique=>true
  end
end
