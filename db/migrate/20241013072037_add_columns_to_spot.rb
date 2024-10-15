class AddColumnsToSpot < ActiveRecord::Migration[7.1]
  def change
    add_column :spots, :latitude, :float
    add_column :spots, :longitude, :float
    add_reference :spots, :user, null: false, foreign_key: true
  end
end
