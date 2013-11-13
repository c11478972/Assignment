class AddCostToRepairs < ActiveRecord::Migration
  def change
    add_column :repairs, :cost, :float

  end
end
