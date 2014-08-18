json.array!(@registrants) do |registrant|
  json.extract! registrant, :id
  json.url registrant_url(registrant, format: :json)
end
