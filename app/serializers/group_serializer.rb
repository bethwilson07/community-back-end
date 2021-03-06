class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :photo, :description
  has_many :members
  has_many :events
  has_many :member_events
end
