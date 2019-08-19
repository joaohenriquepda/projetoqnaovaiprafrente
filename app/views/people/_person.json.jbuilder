json.extract! person, :id, :name, :type, :phone, :created_at, :updated_at
json.url person_url(person, format: :json)
