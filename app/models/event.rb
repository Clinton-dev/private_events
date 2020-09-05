class Event < ApplicationRecord
  has_many :attending1s
  has_many :attendees, through: :attending1s, source: :attendee
  belongs_to :creator, class_name: "User"

  scope :past, ->(edate) { where('date <?', edate) if edate.present? }

  scope :upcoming, ->(edate) { where('date >?', edate) if edate.present? }
end
