class Member < ApplicationRecord
  belongs_to :group
  has_many :member_events
  has_many :events, through: :member_events
  has_secure_password
end
