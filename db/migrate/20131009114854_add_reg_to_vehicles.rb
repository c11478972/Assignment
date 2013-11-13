class AddRegToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :registration_num, :string

  end
end
