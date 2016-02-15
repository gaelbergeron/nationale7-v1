class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :status
      t.string :make
      t.string :model
      t.integer :year
      t.string :engine
      t.string :version_trim
      t.string :body_type
      t.string :fuel_type
      t.string :transmission
      t.integer :number_of_doors
      t.integer :number_of_seats
      t.integer :mileage
      t.string :vin_number
      t.string :exterior_paint
      t.string :interior_type
      t.string :interior_paint
      t.string :manufacturer_warranty
      t.integer :engine_size
      t.integer :horsepower
      t.integer :fiscal_horsepower
      t.integer :number_of_cylinders
      t.integer :number_of_valves
      t.integer :combined_l_100km
      t.integer :co2_emissions
      t.datetime :date_of_inspection
      t.references :inspector
      t.integer :vroom_price
      t.integer :dealer_price
      t.integer :transaction_price
      t.text :inspector_comment
      t.text :owner_comment
      t.string :location_city
      t.string :location_department

      t.timestamps null: false
    end
  end
end
