class AddLocationIdToServiceStations < ActiveRecord::Migration
  def change
    add_column :service_stations, :location_id, :integer

  end
end
