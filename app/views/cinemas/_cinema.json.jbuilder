json.extract! cinema, :id, :movie_id, :seats, :work_hours_start, :work_hours_end, :created_at, :updated_at
json.url cinema_url(cinema, format: :json)
