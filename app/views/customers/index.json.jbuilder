json.array!(@customers) do |customer|
  json.extract! customer, :id, :company, :street, :plz, :city, :state
  json.url customer_url(customer, format: :json)
end
