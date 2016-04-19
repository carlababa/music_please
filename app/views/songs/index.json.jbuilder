json.array!(@songs) do |song|
  json.extract! song, :id, :name, :artist_id, :year, :album, :img
  json.url song_url(song, format: :json)
end
