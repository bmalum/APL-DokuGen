json.array!(@products) do |product|
  json.extract! product, :id, :name, :part_number, :production_number, :committee, :drawing_number
  json.url product_url(product, format: :json)
end
