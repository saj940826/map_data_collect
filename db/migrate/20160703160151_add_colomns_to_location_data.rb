class AddColomnsToLocationData < ActiveRecord::Migration
  def change
    add_column :location_data, :times, :integer
    add_column :location_data, :time_stamp, :long
    add_column :location_data, :local_time, :time
    add_column :location_data, :longitude, :float
    add_column :location_data, :latitude, :float
    add_column :location_data, :bearing, :float
  end
end
