class ChangeColumnToHanchanResult < ActiveRecord::Migration
  def change

    change_column :hanchan_results, :match_id, :string, null: false
    change_column :hanchan_results, :hanchan_id, :string, null: false
    change_column :hanchan_results, :player_id, :string, null: false
    change_column :hanchan_results, :yen_points, :integer, null: false
    change_column :hanchan_results, :yen_yakitori, :integer, null: false
    change_column :hanchan_results, :yen_tobi, :integer, null: false
    change_column :hanchan_results, :yen_umaoka, :integer, null: false
    change_column :hanchan_results, :yen_total, :integer, null: false

  end
end
