class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :type #changed to vehicletype
      t.string :model
      t.integer :customer_id
		# added registration_num
      t.timestamps
    end
  end
end
