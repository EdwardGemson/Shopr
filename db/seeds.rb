# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@store_and_inventory_id = 1 
stores = []
products = []
inventories = []
20.times do |i|
	stores << Store.create({name: Faker::Beer.name, open: true, hours: "247 365"})
	products << Product.create({name: Faker::Hipster.word, inventory_id: @store_and_inventory_id})
	inventories << Inventory.create({products: products.sample, store_id: @store_and_inventory_id})
	@store_and_inventory_id += 1
end