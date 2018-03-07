# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating sandwiches"

FoodItem.create(name: "Биг Мак", price: 130, category: "sandwich", photo: "big_mac.png")
FoodItem.create(name: "Биг Тейсти", price: 240, category: "sandwich", photo: "big_tasty.png")
FoodItem.create(name: "Гамбургер", price: 48, category: "sandwich", photo: "hamburger.png")
FoodItem.create(name: "Гриль Гурмэ", price: 260, category: "sandwich", photo: "gourmet-grill.png")
FoodItem.create(name: "Вестерн Гурмэ", price: 200, category: "sandwich", photo: "gourmet-western.png")
FoodItem.create(name: "Чизбургер", price: 50, category: "sandwich", photo: "cheeseburger.png")
FoodItem.create(name: "Двойной Чизбургер", price: 117, category: "sandwich", photo: "double_cheeseburger.png")
FoodItem.create(name: "Гранд Чизбургер", price: 121, category: "sandwich", photo: "grand-cheeseburger.png")
FoodItem.create(name: "Двойной Гранд Чизбургер", price: 167, category: "sandwich", photo: "double-grand-cheese.png")


FoodItem.create(name: "Шримп Ролл", price: 199, category: "roll", photo: "roll.png") # roll
FoodItem.create(name: "Чизбургер Де Люкс", price: 142, category: "sandwich", photo: "cheese-deluxe.png")
FoodItem.create(name: "Двойной Чизбургер Де Люкс", price: 187, category: "sandwich", photo: "double-cheese-deluxe.png")
FoodItem.create(name: "Филе-о-Фиш", price: 126, category: "sandwich", photo: "file_o_fish.png")
FoodItem.create(name: "Цезарь Ролл", price: 161, category: "roll", photo: "cesar_roll.png") # roll
FoodItem.create(name: "Чикенбургер", price: 50, category: "sandwich", photo: "chickenburger.png")
FoodItem.create(name: "Чикен Карри", price: 130, category: "sandwich", photo: "curry.png")
FoodItem.create(name: "Чикен Гурмэ Экзотик", price: 230, category: "sandwich", photo: "deluxe_curry.jpg")
FoodItem.create(name: "Двойной Филе-о-Фиш", price: 154, category: "sandwich", photo: "2fish.png")
FoodItem.create(name: "Фиш Ролл", price: 160, category: "roll", photo: "fish_roll.png") # roll



puts "Creating rolls"




# img src="./assets/mcdonalds/big_mac.png" alt=""> -->
