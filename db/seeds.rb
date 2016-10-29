# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@store_id = 1 
20.times do |i|
	stores = Store.create({name: Faker::Beer.name, open: true, hours: "247 365"})
	inventories = Inventory.create({products: Faker::Hipster.words(4), store_id: @store_id})
	@store_id += 1
end