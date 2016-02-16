json.array!(@matches) do |match|
  json.extract! match, :id, :name, :stage_type
  json.url match_url(match, format: :json)
end
