json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :street, :zip_code, :state
  json.url customer_url(customer, format: :json)
end
