class ProgramSegment < ActiveRecord::Base
  belongs_to :program_model
  has_many :attendees
end
