class CreateHanchans < ActiveRecord::Migration
  def change
    create_table :hanchans do |t|
      t.string :match_id
      t.string :hanchan_id
      t.string :player_id
      t.integer :points
      t.boolean :is_baked
      t.integer :bird_point
      t.boolean :is_flied
      t.boolean :is_flying

      t.timestamps null: false
    end
  end
end
