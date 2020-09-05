class Event < ApplicationRecord
  has_many :attending1s
  has_many :attendees, through: :attending1s, source: :attendee
  belongs_to :creator, class_name: "User"

  def self.past(edate)
    where('date <?', edate) if edate.present?
  end

  def self.upcoming(edate)
    where('date >?', edate) if edate.present?
  end
end
