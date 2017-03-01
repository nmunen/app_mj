class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :player_id
      t.string :player_name
      t.boolean :is_admin

      t.timestamps null: false
    end
  end
end
