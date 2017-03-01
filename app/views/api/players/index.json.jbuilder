json.array!(@players) do |player|
  json.extract! player, :id, :player_id, :player_name, :is_admin, :created_at, :updated_at
end
