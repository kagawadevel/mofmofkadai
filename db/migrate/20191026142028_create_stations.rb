class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :route
      t.string :name
      t.integer :time
      t.integer :property_id

      t.timestamps
    end
  end
end
