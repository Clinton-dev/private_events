class User < ApplicationRecord
  validates :name, presence: true
  attr_accessible :name

  def self.authenticate(name)
    user = find_by_name(name)
    if user
     user
    else
     nil
    end
  end
end
