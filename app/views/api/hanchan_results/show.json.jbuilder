json.array!(@hanchan_results) do |hanchan_result|
  json.extract! hanchan_result, :id, :match_id, :hanchan_id, :player_id, :yen_points, :yen_yakitori, :yen_tobi, :yen_umaoka, :yen_total, :created_at, :updated_at
end
