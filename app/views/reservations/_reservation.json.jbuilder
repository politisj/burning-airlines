json.extract! reservation, :id, :row, :col, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
