class CreateTipResults < ActiveRecord::Migration
  def change
    create_table :tip_results do |t|
      t.string :match_id
      t.string :player_id
      t.integer :yen_tip

      t.timestamps null: false
    end
  end
end
