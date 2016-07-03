class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.string :timestamp
      t.time :local_time
      t.float :longitude
      t.float :latitude
      t.float :bearing
      t.timestamps null: false
    end
  end
end
