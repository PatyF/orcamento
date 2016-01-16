json.array!(@movements) do |movement|
  json.extract! movement, :id, :description, :user_id, :category_id, :account_id, :date, :value
  json.url movement_url(movement, format: :json)
end
