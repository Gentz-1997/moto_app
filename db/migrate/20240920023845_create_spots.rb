class CreateSpots < ActiveRecord::Migration[7.1]
  def change
    create_table :spots do |t|
      t.string :spot_name
      t.string :address

      t.timestamps
    end
  end
end
