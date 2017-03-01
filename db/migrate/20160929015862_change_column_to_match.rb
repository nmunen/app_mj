class ChangeColumnToMatch < ActiveRecord::Migration
  def change
    change_column :matches, :match_id, :string, null: false
    change_column :matches, :player_id, :string, null: false
    change_column :matches, :yen_total, :integer, null: false
  end
end
