json.extract! album_inv, :id, :Title, :Genre, :Year, :dAdded, :Plays, :Publisher, :created_at, :updated_at
json.url album_inv_url(album_inv, format: :json)
