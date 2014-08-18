class Registrant < ActiveRecord::Base
  has_one :user
  has_many :attendees
end
