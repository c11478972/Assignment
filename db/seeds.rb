# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	locations = Location.create([{postal_code: 'D1'},{postal_code: 'D2'},{postal_code: 'D3'},{postal_code: 'D4'},{postal_code: 'D5'}])
	Location.create([{postal_code: 'D6'},{postal_code: 'D7'},{postal_code: 'D8'},{postal_code: 'D9'},{postal_code: 'D10'},{postal_code: 'D12'}])
	Location.create(postal_code: 'D13')
	Location.create(postal_code: 'D14')
	Location.create(postal_code: 'D17')
	Location.create(postal_code: 'D20')
	Location.create(postal_code: 'D22')
	Location.create(postal_code: 'D24')
	customer.create(first_name: 'test1', last_name:'test1', email: 'stephenoken@gmail.com', 
					address: 'auinger st', location_id loactions.first, password_digest: 'password')
	service_station(name:'garage1', owner:'test1', contact_number: '012824253',
					address: 'bilbo avenue', logo: 'rails.png' type:'bmw/mini' location_id: loactions.first)
	vehicle(vehicletype: 'bmw/mini', model: 'i5000', registration_num: '131D00012',customer_id: 0)
	repairs(vehicle_id:0, service_station_id: 0, end_date'2013-01-15',description:'test test', cost: '0')
	
	
	
