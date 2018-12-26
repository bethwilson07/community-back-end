class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :location
      t.integer :latitude
      t.integer :longitude
      t.datetime :when
      t.integer :group_id
      t.timestamps
    end
  end
end
