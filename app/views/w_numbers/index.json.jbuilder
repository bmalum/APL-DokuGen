json.array!(@w_numbers) do |w_number|
  json.extract! w_number, :id, :number, :darwing_number, :year, :standard, :tag_number, :name, :order_id
  json.url w_number_url(w_number, format: :json)
end
