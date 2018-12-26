class MemberEventSerializer < ActiveModel::Serializer
  attributes :id, :member_id, :event_id, :organizer, :status
  belongs_to :member
  belongs_to :event
end
