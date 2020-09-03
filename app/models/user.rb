class User < ApplicationRecord
  # has_many :eventAttendings, foreign_key: :attending_event_id
  # has_many :events, through: :eventAttendings, source: :attending_event
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
