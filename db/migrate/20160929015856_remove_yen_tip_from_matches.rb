class RemoveYenTipFromMatches < ActiveRecord::Migration
  def change
    remove_column :matches, :tip, :integer
  end
end
