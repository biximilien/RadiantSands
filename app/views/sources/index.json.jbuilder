json.array!(@sources) do |source|
  json.extract! source, :id, :title, :url, :imported_at, :reimport
  json.url source_url(source, format: :json)
end
