class AddMatchIdToHanchanResult < ActiveRecord::Migration
  def change
    add_column :hanchan_results, :match_id, :string
  end
end
