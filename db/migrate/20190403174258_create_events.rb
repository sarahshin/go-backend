class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :date
      t.string :time
      t.string :name
      t.string :address
      t.string :url
      t.string :imgurl
      t.integer :user_trip_id

      t.timestamps
    end
  end
end
