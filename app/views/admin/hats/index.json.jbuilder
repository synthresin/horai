json.array!(@admin_hats) do |admin_hat|
  json.extract! admin_hat, :id
  json.url admin_hat_url(admin_hat, format: :json)
end
