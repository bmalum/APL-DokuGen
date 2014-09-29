json.array!(@end_documentations) do |end_documentation|
  json.extract! end_documentation, :id, :copies, :cd, :created_by, :printed_at, :language, :params
  json.url end_documentation_url(end_documentation, format: :json)
end
