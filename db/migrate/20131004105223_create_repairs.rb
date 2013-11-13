class CreateRepairs < ActiveRecord::Migration
  def change
    create_table :repairs do |t|
      t.integer :vehicle_id
      t.integer :service_station_id
      t.date :end_date
      t.text :description

      t.timestamps
    end
  end
end
