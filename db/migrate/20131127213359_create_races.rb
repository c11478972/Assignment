class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :racename
      t.string :circutmap
      t.text :trailer
      t.date :dor
      t.string :vehicletype
      t.string :racetype
      t.integer :sponsor
      t.string :location
      t.string :telephone
      t.string :website
      t.float :driverentryfee
      t.float :spectatorfee

      t.timestamps
    end
  end
end
