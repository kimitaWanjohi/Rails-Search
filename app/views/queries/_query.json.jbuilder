json.extract! query, :id, :search, :user_ip, :created_at, :updated_at
json.url query_url(query, format: :json)
