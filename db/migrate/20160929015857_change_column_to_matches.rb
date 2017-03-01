class ChangeColumnToMatches < ActiveRecord::Migration
  def change
    rename_column :matches, :points, :yen_total
  end
end
