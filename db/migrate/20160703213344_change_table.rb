class ChangeTable < ActiveRecord::Migration
  def change
    change_table :location_datas do |t|
        t.string :timestamp
        t.time :local_time
        t.float :longitude
        t.float :latitude
        t.float :bearing
    end
  end
end
