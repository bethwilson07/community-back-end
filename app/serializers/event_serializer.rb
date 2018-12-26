class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :location, :latitude, :longitude, :when, :group_id
  belongs_to :group
  has_many :member_events
  has_many :members, through: :member_events
end
