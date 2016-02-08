class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :engine
      t.string :version_trim
      t.string :body_type
      t.string :fuel_type

      t.timestamps null: false
    end
  end
end


t.string
t.integer
