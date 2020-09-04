class User < ApplicationRecord
  has_many :created_events, foreign_key: :creator_id, class_name: "Event"
  has_many :attending1s, foreign_key: "attendee_id"
  has_many :events, through: :attending1s
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
