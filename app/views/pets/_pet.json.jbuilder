json.extract! pet, :id, :name, :breed, :birthtime, :created_at, :updated_at
json.url pet_url(pet, format: :json)
