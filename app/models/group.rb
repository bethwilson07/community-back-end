class Group < ApplicationRecord
  has_many :members
  has_many :events
end
