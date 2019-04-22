class AddCatToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :cat, :string
  end
end
