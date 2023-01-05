json.extract! cinema, :id, :movie_id, :seats, :showing, :created_at, :updated_at
json.url cinema_url(cinema, format: :json)
