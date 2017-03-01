class ChangeColumnToTipResult < ActiveRecord::Migration
  def change
    change_column :tip_results, :match_id, :string, null:false
    change_column :tip_results, :player_id, :string, null:false
    change_column :tip_results, :yen_tip, :integer, null:false
  end
end
