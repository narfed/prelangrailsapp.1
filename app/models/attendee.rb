class Attendee < ActiveRecord::Base
  belongs_to :program_segment
  belongs_to :registrant
end
