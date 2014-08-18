json.array!(@program_models) do |program_model|
  json.extract! program_model, :id, :name
  json.url program_model_url(program_model, format: :json)
end
