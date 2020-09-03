class User < ApplicationRecord
  has_many :event_attendings, foreign_key: :event_attendee_id
  has_many :attended_event, through: :event_attendings
  has_many :created_events, foreign_key:"creator_id", class_name:"Event"
  validates :name, presence: true
  
  def self.authenticate(name)
    user = find_by_name(name)
    if user
     user
    else
     nil
    end
  end
end
