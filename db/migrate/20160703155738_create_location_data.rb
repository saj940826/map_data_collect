class CreateLocationData < ActiveRecord::Migration
  def change
    create_table :location_data do |t|
      t.long :timestamp
      t.time :local_time
      t.float longitude
      t.float :latitude
      t.float :bearing
      t.timestamps null: false
    end
  end
end
