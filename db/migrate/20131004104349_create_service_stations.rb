class CreateServiceStations < ActiveRecord::Migration
  def change
    create_table :service_stations do |t|
      t.string :name
      t.string :owner
      t.integer :contact_number# changed to string
      t.string :address
      t.string :logo
      t.string :type

      t.timestamps
    end
  end
end
