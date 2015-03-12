json.array!(@tournaments) do |tournament|
  json.extract! tournament, :id, :name, :beacon_major, :started_at, :ended_at, :deleted
  json.url tournament_url(tournament, format: :json)
end
