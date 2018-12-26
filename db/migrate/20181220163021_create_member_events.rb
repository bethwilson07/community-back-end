class CreateMemberEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :member_events do |t|
      t.integer :member_id
      t.integer :event_id
      t.boolean :organizer
      t.string :status
      t.timestamps
    end
  end
end
