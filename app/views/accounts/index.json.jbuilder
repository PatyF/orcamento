json.array!(@accounts) do |account|
  json.extract! account, :id, :description, :user_id
  json.url account_url(account, format: :json)
end
