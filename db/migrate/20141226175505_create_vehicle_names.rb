class CreateVehicleNames < ActiveRecord::Migration
  def change
    create_table :vehicle_names do |t|
      t.string :name
      t.integer :vehicle_brand_id
      t.integer :year
      t.text :obs

      t.timestamps
    end
  end
end
