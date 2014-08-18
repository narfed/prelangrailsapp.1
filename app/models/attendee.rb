class Attendee < ActiveRecord::Base
  belongs_to :program_segment
  belongs_to :registrant
  validates_formatting_of :emmergencycontactphone, using: :us_phone
end
