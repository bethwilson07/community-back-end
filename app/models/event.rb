class Event < ApplicationRecord
  belongs_to :group
  has_many :member_events
  has_many :members, through: :member_events
end
