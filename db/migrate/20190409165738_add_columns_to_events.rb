class AddColumnsToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :address1, :string
    add_column :events, :address2, :string
    add_column :events, :latitude, :decimal
    add_column :events, :longitude, :decimal
    add_column :events, :phone, :string
    add_column :events, :rating, :float
    add_column :events, :price, :string
  end
end
