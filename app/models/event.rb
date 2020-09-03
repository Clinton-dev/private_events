class Event < ApplicationRecord
  # has_many :eventAttendings, foreign_key: :event_attendee_id
  # has_many :attendees, through: :eventAttendings, source: :event_attendee
  
  belongs_to :creator, class_name: "User"
end
