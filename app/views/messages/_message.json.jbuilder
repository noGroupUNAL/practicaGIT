json.extract! message, :id, :tittle, :description, :created_at, :updated_at
json.url message_url(message, format: :json)