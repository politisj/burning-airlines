json.extract! flight, :id, :flight_no, :departure_date, :from, :to, :created_at, :updated_at
json.url flight_url(flight, format: :json)
