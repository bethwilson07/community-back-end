class Group < ApplicationRecord
  has_many :members
  has_many :events
  has_many :member_events, through: :members
end
