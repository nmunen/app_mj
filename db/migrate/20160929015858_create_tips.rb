class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :match_id
      t.string :player_id
      t.integer :tip

      t.timestamps null: false
    end
  end
end
