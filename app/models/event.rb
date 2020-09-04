class Event < ApplicationRecord
  has_many :attending1s
  has_many :attendees, through: :attending1s, source: :attendee
  belongs_to :creator, class_name: "User"
end
