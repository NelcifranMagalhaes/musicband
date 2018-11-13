json.extract! artist, :id, :name, :nick_name, :description, :position, :created_at, :updated_at
json.url artist_url(artist, format: :json)
