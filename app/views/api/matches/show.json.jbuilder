json.array!(@matches) do |match|
  json.extract! match, :id, :match_id, :match_name, :player_id, :yen_total, :created_at, :updated_at
end
