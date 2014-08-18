json.array!(@attendees) do |attendee|
  json.extract! attendee, :id, :name, :allergies, :special_needs, :age, :program_segment_id, :emmergencycontactphone, :media_release, :registrant_id
  json.url attendee_url(attendee, format: :json)
end
