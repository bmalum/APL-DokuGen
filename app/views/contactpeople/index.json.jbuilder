json.array!(@contactpeople) do |contactperson|
  json.extract! contactperson, :id, :name, :tel, :fax, :mail, :customer_id, :order_id
  json.url contactperson_url(contactperson, format: :json)
end
