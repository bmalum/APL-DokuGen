json.array!(@doku_ids) do |doku_id|
  json.extract! doku_id, :id, :w_number_id, :dokument_id
  json.url doku_id_url(doku_id, format: :json)
end
