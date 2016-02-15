json.array!(@teams) do |team|
  json.extract! team, :id, :name, :first_player, :second_player
  json.url team_url(team, format: :json)
end
