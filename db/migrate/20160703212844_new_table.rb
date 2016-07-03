class NewTable < ActiveRecord::Migration
  def change
    create_table :location_datas do |t|

      t.timestamps null: false
    end
  end
end
