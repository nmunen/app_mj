class ChangeColumnToPlayer < ActiveRecord::Migration
  def change
    change_column :players, :player_id, :string, null: false
    change_column :players, :player_name, :string, null: false
  end
end
