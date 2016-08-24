class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :status #renamed
      t.string :make #renamed
      t.string :model #renamed
      t.integer :year #renamed
      t.string :engine #renamed
      t.string :version_trim #renamed
      t.string :body_type #removed
      t.string :fuel_type #renamed
      t.string :transmission #untouched
      t.integer :number_of_doors #renamed
      t.integer :number_of_seats #renamed
      t.integer :mileage #renamed
      t.string :vin_number #renamed
      t.string :exterior_paint #renamed
      t.string :interior_type #renamed
      t.string :interior_paint #renamed
      t.string :manufacturer_warranty   #renamed
      t.integer :engine_size #renamed
      t.integer :horsepower #renamed
      t.integer :fiscal_horsepower #renamed
      t.integer :number_of_cylinders #renamed
      t.integer :number_of_valves #renamed
      t.integer :combined_l_100km #renamed
      t.integer :co2_emissions #renamed
      t.datetime :date_of_inspection #removed
      t.references :inspector #removed
      t.integer :vroom_price #renamed
      t.integer :dealer_price #renamed
      t.integer :transaction_price #removed
      t.text :inspector_comment #removed
      t.text :owner_comment #renamed
      t.string :location_city #removed
      t.string :location_department #removed

      t.timestamps null: false
    end
  end
end
