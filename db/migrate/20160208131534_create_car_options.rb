class CreateCarOptions < ActiveRecord::Migration
  def change
    create_table :car_options do |t|
      t.references :car
      t.references :option 

      t.timestamps null: false
    end
  end
end
