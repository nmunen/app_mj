class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :match_id
      t.string :match_name
      t.string :player_id
      t.integer :points
      t.integer :tip

      t.timestamps null: false
    end
  end
end
