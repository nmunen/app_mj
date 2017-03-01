class ChangeColumnToTip < ActiveRecord::Migration
  def change
    change_column :tips, :match_id, :string, null:false
    change_column :tips, :player_id, :string, null:false
    change_column :tips, :tip, :integer, null:false
  end
end
