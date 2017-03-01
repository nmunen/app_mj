class ChangeColumnToHanchan < ActiveRecord::Migration
  def change

    change_column :hanchans, :match_id, :string, null: false
    change_column :hanchans, :hanchan_id, :string, null: false
    change_column :hanchans, :player_id, :string, null: false
    change_column :hanchans, :points, :integer, null: false
    change_column :hanchans, :is_baked, :boolean, null: false
    change_column :hanchans, :is_flied, :boolean, null: false
    change_column :hanchans, :is_flying, :boolean, null: false

  end
end
