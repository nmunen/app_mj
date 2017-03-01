class AddIndexToHanchan < ActiveRecord::Migration
  def change

   add_index :hanchans, [:match_id, :hanchan_id, :player_id], :unique=>true

  end
end
