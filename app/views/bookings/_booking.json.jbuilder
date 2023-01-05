json.extract! booking, :id, :user, :movie, :start_time, :created_at, :updated_at
json.url booking_url(booking, format: :json)
