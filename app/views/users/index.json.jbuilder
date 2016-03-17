json.array!(@users) do |user|
  json.extract! user, :id, :name, :team, :email, :phone, :paid, :date_paid
  json.url user_url(user, format: :json)
end
