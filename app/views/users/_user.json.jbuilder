json.extract! user, :id, :surname, :name, :patronymic, :email, :region, :created_at, :updated_at
json.url user_url(user, format: :json)
