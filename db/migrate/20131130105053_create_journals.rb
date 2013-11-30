class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.integer :customer_id
      t.string :title
      t.string :author
      t.string :headimage
      t.text :intialentry

      t.timestamps
    end
  end
end
