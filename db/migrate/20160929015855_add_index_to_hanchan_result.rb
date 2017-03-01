class AddIndexToHanchanResult < ActiveRecord::Migration
  def change

    add_index :hanchan_results, [:match_id, :hanchan_id, :player_id], :unique=>true

  end
end
