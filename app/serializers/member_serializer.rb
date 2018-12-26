class MemberSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :email, :photo, :bio, :group_id
  belongs_to :group
  has_many :member_events
  has_many :events, through: :member_events

end
