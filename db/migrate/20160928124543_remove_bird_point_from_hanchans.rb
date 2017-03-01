class RemoveBirdPointFromHanchans < ActiveRecord::Migration
  def change
    remove_column :hanchans, :bird_point, :string
  end
end
