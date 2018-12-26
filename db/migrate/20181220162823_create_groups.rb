class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :photo
      t.string :description
      t.timestamps
    end
  end
end
