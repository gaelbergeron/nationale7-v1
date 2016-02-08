class CreateInspectors < ActiveRecord::Migration
  def change
    create_table :inspectors do |t|
      t.string :first_name
      t.string :last_name
      t.string :profile_picture_url
      t.string :location_city
      t.string :location_department

      t.timestamps null: false
    end
  end
end
