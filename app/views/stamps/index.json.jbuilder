json.array!(@stamps) do |stamp|
  json.extract! stamp, :id, :tournament_id, :name, :beacon_minor, :latitude, :longitude, :deleted
  json.url stamp_url(stamp, format: :json)
end
