class Event < ApplicationRecord
  has_many :event_attendings, foreign_key: :attending_event_id
  has_many :attendees, through: :event_attendings, :source => 'attendee_event'
  belongs_to :creator, class_name: "User"
end
