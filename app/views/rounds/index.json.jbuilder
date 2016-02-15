json.array!(@rounds) do |round|
  json.extract! round, :id, :name, :round_type, :tournament_id
  json.url round_url(round, format: :json)
end
