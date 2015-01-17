json.array!(@nesteds) do |nested|
  json.extract! nested, :id
  json.url nested_url(nested, format: :json)
end
