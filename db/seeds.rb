# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Clearning db"
FoodItem.destroy_all

puts "Creating food items"
FoodItem.create(name: "Биг Мак", price: 150);
FoodItem.create(name: "Картофель Фри", price: 80);
FoodItem.create(name: "Чикен Нагетс", price: 200);
