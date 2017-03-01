class CreateHanchanResults < ActiveRecord::Migration
  def change
    create_table :hanchan_results do |t|
      t.string :hanchan_id
      t.string :player_id
      t.integer :yen_points
      t.integer :yen_yakitori
      t.integer :yen_tobi
      t.integer :yen_umaoka
      t.integer :yen_total

      t.timestamps null: false
    end
  end
end
