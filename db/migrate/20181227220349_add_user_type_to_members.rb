class AddUserTypeToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :user_type, :string
  end
end
