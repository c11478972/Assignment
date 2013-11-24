class ChangeContactnumberToStringInServicestation < ActiveRecord::Migration
  def self.up
  change_column :service_stations, :contact_number, :string
  end

  def self.down
  change_column :service_stations, :contact_number, :integer
  end
end
