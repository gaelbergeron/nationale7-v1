class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :phone_number
      t.string :address 
      t.string :city
      t.integer :zip_code
      t.datetime :birth_date

      t.timestamps null: false
    end
  end
end
