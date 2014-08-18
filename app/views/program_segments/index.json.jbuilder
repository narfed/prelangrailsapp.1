json.array!(@program_segments) do |program_segment|
  json.extract! program_segment, :id, :name, :date, :cost, :capacity, :enrolled, :program_model_id
  json.url program_segment_url(program_segment, format: :json)
end
