class CreateCarClients < ActiveRecord::Migration
  def change
    create_table :car_clients do |t|
      t.references :car
      t.references :client 
      t.string :position
      t.references :inspector

      t.timestamps null: false
    end
  end
end
