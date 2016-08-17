ActiveAdmin.register Car do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :status, :make, :model, :year, :engine, :version_trim, :body_type, :fuel_type, :transmission, :number_of_doors, :number_of_seats, :mileage, :vin_number, :exterior_paint, :interior_type, :interior_paint, :manufacturer_warranty, :engine_size, :horsepower, :fiscal_horsepower, :number_of_cylinders, :number_of_valves, :combined_l_100km, :co2_emissions, :date_of_inspection, :inspector_id, :vroom_price, :dealer_price, :transaction_price, :inspector_comment, :owner_comment, :location_city, :location_department  

  index do
    id_column
    column :status
    column :make
    column :model
    column :year
    column :engine
    column :version_trim
    column :body_type
    column :fuel_type
    column :transmission
    column :number_of_doors
    column :number_of_seats
    column :mileage
    column :vin_number
    column :exterior_paint
    column :interior_type
    column :interior_paint
    column :manufacturer_warranty
    column :engine_size
    column :horsepower
    column :fiscal_horsepower
    column :number_of_cylinders
    column :number_of_valves
    column :combined_l_100km
    column :co2_emissions
    column :date_of_inspection
    column :inspector_id
    column :vroom_price
    column :dealer_price
    column :transaction_price
    column :inspector_comment
    column :owner_comment
    column :location_city
    column :location_department
    column :created_at
    column :updated_at
    actions
  end


end
