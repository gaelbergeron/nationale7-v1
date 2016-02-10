# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

test_car_1 = Car.create(status: 'active', make: 'Alfa Romeo', model: '147', year: 2008, engine: '1.6', version_trim: 'Quadrofoglio', body_type: 'compact', fuel_type: 'Essence', transmission: 'manuel', number_of_doors: 5, number_of_seats: 5, mileage: 78300, vin_number: 'ASHX5732KC8', exterior_color: 'Rouge', interior_color: 'noir', interior_type: 'Alcantara', manufacturer_warranty: 'expirée', engine_size: 1600, horsepower: 125, fiscal_horsepower: 5, number_of_cylinders: 4, number_of_valves: 16, combined_l_100km: 13, co2_emissions: 75, date_of_inspection: 2016-01-30,  inspector_id: 1, vroom_price: 7000, dealer_price: 8000, inspector_comment: 'Superbe voiture, très bien entretenue, mon inspection est resortie sans problème', owner_comment: 'Je la vend à contre coeur, elle va beaucoup me manquer', location_city: 'Nantes', location_department: 'Loire-Atlantique')

test_car_2 = Car.create(status: 'active', make: 'BMW', model: 'Série 5', year: 2014, engine: '1.6', version_trim: 'Quadrofoglio', body_type: 'compact', fuel_type: 'Essence', transmission: 'manuel', number_of_doors: 5, number_of_seats: 5, mileage: 78300, vin_number: 'ASHX5732KC8', exterior_color: 'Rouge', interior_color: 'noir', interior_type: 'Alcantara', manufacturer_warranty: 'expirée', engine_size: 1600, horsepower: 125, fiscal_horsepower: 5, number_of_cylinders: 4, number_of_valves: 16, combined_l_100km: 13, co2_emissions: 75, date_of_inspection: 2016-01-30,  inspector_id: 1, vroom_price: 7000, dealer_price: 8000, inspector_comment: 'Superbe voiture, très bien entretenue, mon inspection est resortie sans problème', owner_comment: 'Quel bonheur cette BM, je pleure déjà', location_city: 'Nantes', location_department: 'Loire-Atlantique')

test_inspector_1 = Inspector.create(first_name: 'Jean-Marc', last_name: 'Langevin', location_city: 'Nantes', location_department: 'Loire-Atlantique')

test_option_1 = Option.create(description: 'Bluetooth')
test_option_2 = Option.create(description: 'Toit ouvrant')
test_option_3 = Option.create(description: 'Ordinateur de bord')

test_car_option_1 = CarOption.create(car_id: 1, option_id: 1)
# test_car_option_2 = CarOption.create(car_id: 1, option_id: 2)
test_car_option_3 = CarOption.create(car_id: 1, option_id: 3)
test_car_option_4 = CarOption.create(car_id: 2, option_id: 3)


test_client_1 = Client.create(first_name: 'Jean-Pierre', last_name: 'Bergeron', email_address: 'jpberger@hotmail.fr', phone_number: '02-40-74-95-76', address: '48 rue du Transvaal', city: 'Nantes', zip_code: 44300, birth_date: 1948-06-11)

test_client_2 = Client.create(first_name: 'Gael', last_name: 'Bergeron', email_address: 'gael.bergeron@gmail.com', phone_number: '07-61-25-80-89', address: '48 rue du Pré St Gervais', city: 'Pantin', zip_code: 93500, birth_date: 1988-06-14)

test_car_client_1 = CarClient.create(car_id: 1, client_id: 1, position: 'Vendeur', inspector_id: 1 )

test_car_client_2 = CarClient.create(car_id: 1, client_id: 2, position: 'Acheteur', inspector_id: 1 )