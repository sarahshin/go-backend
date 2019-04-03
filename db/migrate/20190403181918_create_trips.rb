class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :location
      t.string :startdate
      t.string :enddate

      t.timestamps
    end
  end
end
