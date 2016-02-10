# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).


test_car_1 = Car.create(status: 'active', make: 'Alfa Romeo', model: '147', year: 2008, engine: '1.6 32V', version_trim: 'Quadrofoglio', body_type: 'Compacte', fuel_type: 'Essence', transmission: 'Manuelle', number_of_doors: 5, number_of_seats: 5, mileage: 78300, vin_number: 'ASHX5732KC8', exterior_color: 'Rouge', interior_color: 'Noir', interior_type: 'Alcantara', manufacturer_warranty: 'Expirée', engine_size: 1600, horsepower: 125, fiscal_horsepower: 5, number_of_cylinders: 4, number_of_valves: 16, combined_l_100km: 13, co2_emissions: 75, date_of_inspection: 2016-01-30,  inspector_id: 1, vroom_price: 7000, dealer_price: 8000, inspector_comment: 'Superbe voiture, très bien entretenue, mon inspection est resortie sans problème', owner_comment: 'Je la vend à contre coeur, elle va beaucoup me manquer', location_city: 'Nantes', location_department: 'Loire-Atlantique')

test_car_2 = Car.create(status: 'active', make: 'BMW', model: 'Série 5', year: 2014, engine: '2.5 M', version_trim: 'M Sport', body_type: 'Berline', fuel_type: 'Essence', transmission: 'Automatique', number_of_doors: 5, number_of_seats: 5, mileage: 47500, vin_number: 'AGBHSJIWU678', exterior_color: 'Bleu', interior_color: 'Beige', interior_type: 'Alcantara', manufacturer_warranty: 'Garantie BMW jusqu\'en 2017', engine_size: 2500, horsepower: 220, fiscal_horsepower: 7, number_of_cylinders: 4, number_of_valves: 16, combined_l_100km: 14, co2_emissions: 68, date_of_inspection: 2016-02-02,  inspector_id: 2, vroom_price: 37000, dealer_price: 41000, inspector_comment: 'L\'inspection n\'a révélé aucun problème, véhicule entretenu par concessionaire BMW de Paris', owner_comment: 'Quel bonheur cette BM, je pleure déjà', location_city: 'Paris', location_department: 'Paris')

test_car_3 = Car.create(status: 'active', make: 'Peugeot', model: '2008', year: 2014, engine: '1.6 VTi 120ch BVA4', version_trim: 'Allure A', body_type: 'Tout-terrain', fuel_type: 'Essence', transmission: 'Automatique', number_of_doors: 5, number_of_seats: 5, mileage: 3800, vin_number: 'AILDHW25167', exterior_color: 'Gris', interior_color: 'Noir', interior_type: 'Cuir et tissu', manufacturer_warranty: 'Garantie Peugeot jusqu\'en 2019', engine_size: 1598, horsepower: 120, fiscal_horsepower: 7, number_of_cylinders: 4, number_of_valves: 12, combined_l_100km: 12, co2_emissions: 65, date_of_inspection: 2016-02-04,  inspector_id: 3, vroom_price: 16990, dealer_price: 18600, inspector_comment: 'Finition "Allure" pour cette belle 2008 dans un état général proche du neuf. Très belle tenue de route.', owner_comment: 'Je voulais un modèle qui faisait un peu plus 4x4, mais je me suis rendu compte que je ne suis pas Tarzan, mais juste un bolosse de citadin.', location_city: 'Paris', location_department: 'Paris')

test_car_4 = Car.create(status: 'active', make: 'Fiat', model: '500', year: 2009, engine: '500 1.3 Multijet 75 ch DPF', version_trim: 'Lounge', body_type: 'Compacte', fuel_type: 'Diesel', transmission: 'Manuelle', number_of_doors: 3, number_of_seats: 5, mileage: 86600, vin_number: 'Sur demande', exterior_color: 'Blanc', interior_color: 'Gris et crème', interior_type: 'Tissu', manufacturer_warranty: 'Expirée', engine_size: 1248, horsepower: 75, fiscal_horsepower: 4, number_of_cylinders: 4, number_of_valves: 8, combined_l_100km: 8, co2_emissions: 60, date_of_inspection: 2016-01-29,  inspector_id: 4, vroom_price: 6990, dealer_price: 7800, inspector_comment: 'Bel état général pour cette Fiat 500 en finition "Lounge". Equipée actuellement de 4 vrais pneus "hiver", le vendeur donne aussi 4 pneus été.', owner_comment: 'J\'en avais marre d\'avoir l\'air d\'une petite meuf dans ma Fiat 500, à la place je me suis acheté un Hummer, mais c\'est la voiture parfaite pour les petites meufs', location_city: 'Lyon', location_department: 'Rhône')


test_inspector_1 = Inspector.create(first_name: 'Jean-Marc', last_name: 'Langevin', location_city: 'Nantes', location_department: 'Loire-Atlantique')
test_inspector_2 = Inspector.create(first_name: 'Flavien', last_name: 'Berger', location_city: 'Paris', location_department: 'Paris')
test_inspector_3 = Inspector.create(first_name: 'Marc', last_name: 'Paul', location_city: 'Paris', location_department: 'Paris')
test_inspector_4 = Inspector.create(first_name: 'Norbert', last_name: 'Doutressaut', location_city: 'Lyon', location_department: 'Rhône')


test_option_1 = Option.create(description: 'Connexion Bluetooth')
test_option_2 = Option.create(description: 'Toit ouvrant')
test_option_3 = Option.create(description: 'Ordinateur de bord')
test_option_4 = Option.create(description: 'Jantes aluminium')
test_option_5 = Option.create(description: 'Aide au stationnement')
test_option_6 = Option.create(description: 'Connexion USB')
test_option_7 = Option.create(description: 'Régulateur de vitesse')
test_option_8 = Option.create(description: 'Toit panoramique')
test_option_9 = Option.create(description: 'GPS')
test_option_10 = Option.create(description: 'Bon esprit')


test_car_option_1 = CarOption.create(car_id: 1, option_id: 1)
test_car_option_2 = CarOption.create(car_id: 1, option_id: 2)
test_car_option_3 = CarOption.create(car_id: 1, option_id: 3)
test_car_option_4 = CarOption.create(car_id: 2, option_id: 3)
test_car_option_5 = CarOption.create(car_id: 2, option_id: 4)
test_car_option_6 = CarOption.create(car_id: 2, option_id: 5)
test_car_option_7 = CarOption.create(car_id: 2, option_id: 6)
test_car_option_8 = CarOption.create(car_id: 2, option_id: 7)
test_car_option_9 = CarOption.create(car_id: 2, option_id: 8)
test_car_option_10 = CarOption.create(car_id: 2, option_id: 9)
test_car_option_11 = CarOption.create(car_id: 2, option_id: 1)
test_car_option_12 = CarOption.create(car_id: 3, option_id: 2)
test_car_option_13 = CarOption.create(car_id: 3, option_id: 3)
test_car_option_14 = CarOption.create(car_id: 3, option_id: 5)
test_car_option_15 = CarOption.create(car_id: 3, option_id: 8)
test_car_option_16 = CarOption.create(car_id: 3, option_id: 3)
test_car_option_17 = CarOption.create(car_id: 4, option_id: 7)
test_car_option_18 = CarOption.create(car_id: 4, option_id: 10)
test_car_option_19 = CarOption.create(car_id: 4, option_id: 1)
test_car_option_20 = CarOption.create(car_id: 4, option_id: 2)


test_client_1 = Client.create(first_name: 'Jean-Pierre', last_name: 'Bergeron', email_address: 'jpberger@hotmail.fr', phone_number: '02-40-74-95-76', address: '48 rue du Transvaal', city: 'Nantes', zip_code: 44300, birth_date: 1948-06-11)
test_client_2 = Client.create(first_name: 'Gael', last_name: 'Bergeron', email_address: 'gael.bergeron@gmail.com', phone_number: '07-61-25-80-89', address: '48 rue du Pré St Gervais', city: 'Pantin', zip_code: 93500, birth_date: 1988-06-14)
test_client_3 = Client.create(first_name: 'Jean-Michel', last_name: 'Sapin', email_address: 'jms@gouvernement.fr', phone_number: '01-43-24-50-90', address: '86 rue de Lille', city: 'Paris', zip_code: 75006, birth_date: 1955-04-14)
test_client_4 = Client.create(first_name: 'Goyer', last_name: 'Nadaud', email_address: 'gauthier@smiirl.com', phone_number: '07-40-40-40-40', address: '80 rue des Haies', city: 'Paris', zip_code: 75020, birth_date: 1986-07-10)
test_client_5 = Client.create(first_name: 'Romain', last_name: 'Cochet', email_address: 'romain@smiirl.com', phone_number: '07-61-69-47-20', address: '55 rue du mec serein', city: 'Paris', zip_code: 75011, birth_date: 1965-05-12)
test_client_6 = Client.create(first_name: 'Raphaël', last_name: 'Pluvinage', email_address: 'raph@smiirl.com', phone_number: '06-61-55-46-12', address: '12 allée du mec barbu', city: 'Paris', zip_code: 75004, birth_date: 1986-01-05)
test_client_7 = Client.create(first_name: 'Didier', last_name: 'Gaillard', email_address: 'dg@radiometer.com', phone_number: '07-56-24-34-94', address: '4 allée de la Garenne', city: 'Lyon', zip_code: 69000, birth_date: 1960-05-14)
test_client_8 = Client.create(first_name: 'Paul', last_name: 'limpatient', email_address: 'impatient@youhoo.com', phone_number: '05-90-56-38-57', address: '25 place de Lyon', city: 'Lyon', zip_code: 69020, birth_date: 1974-12-01)


test_car_client_1 = CarClient.create(car_id: 1, client_id: 1, position: 'Vendeur', inspector_id: 1 )
test_car_client_2 = CarClient.create(car_id: 1, client_id: 2, position: 'Acheteur', inspector_id: 1 )
test_car_client_3 = CarClient.create(car_id: 2, client_id: 3, position: 'Vendeur', inspector_id: 2 )
test_car_client_4 = CarClient.create(car_id: 2, client_id: 4, position: 'Acheteur', inspector_id: 2 )
test_car_client_5 = CarClient.create(car_id: 3, client_id: 5, position: 'Vendeur', inspector_id: 3 )
test_car_client_6 = CarClient.create(car_id: 3, client_id: 6, position: 'Acheteur', inspector_id: 3 )
test_car_client_7 = CarClient.create(car_id: 4, client_id: 7, position: 'Acheteur', inspector_id: 4 )
test_car_client_8 = CarClient.create(car_id: 4, client_id: 8, position: 'Acheteur', inspector_id: 4 )

