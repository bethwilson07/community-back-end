class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :photo
      t.string :bio
      t.integer :group_id
      t.timestamps
    end
  end
end
