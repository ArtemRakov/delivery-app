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


FoodItem.create(name: 'Чикен Макнаггетс 6 шт', price: 105, category: "starters", photo: "mcnaggets_6.png")
FoodItem.create(name: 'Чикен Макнаггетс 9 шт', price: 150, category: "starters", photo: "mcnaggets_9.png")
FoodItem.create(name: 'Чикен Макнаггетс 20 шт', price: 272, category: "starters", photo: "mcnaggets_20.png")
FoodItem.create(name: 'Креветки 4шт', price: 160, category: "starters", photo: "srimp.png")
FoodItem.create(name: 'Креветки 6шт', price: 224, category: "starters", photo: "srimp.png")
FoodItem.create(name: 'Креветки 9шт', price: 320, category: "starters", photo: "srimp.png")
FoodItem.create(name: 'Куриные крылышки 4 шт', price: 131, category: "starters", photo: "chicken_wings.png")
FoodItem.create(name: 'Куриные крылышки 6 шт', price: 182, category: "starters", photo: "chicken_wings.png")
FoodItem.create(name: 'Куриные крылышки 9 шт', price: 258, category: "starters", photo: "chicken_wings.png")


FoodItem.create(name: 'Картофель фри маленькая порция', price: 44, category: 'fries', photo: 'potato_little.png')
FoodItem.create(name: 'Картофель фри средняя порция', price: 50, category: 'fries', photo: 'potato_big.png')
FoodItem.create(name: 'Картофель фри большая порция', price: 75, category: 'fries', photo: 'potato_medium.png')
FoodItem.create(name: 'Картофель по-деревенски', price: 71, category: 'fries', photo: 'potato_po-derevenski.png')


FoodItem.create(name: 'Соус Сырный', price: 20, category: 'sauces', photo: 'cheesy.png')
FoodItem.create(name: 'Соус Кисло-сладкий', price: 20, category: 'sauces', photo: 'sweet_and_sour.png')
FoodItem.create(name: 'Кетчуп', price: 20, category: 'sauces', photo: 'ketchup.png')
FoodItem.create(name: 'Соус 1000 Островов', price: 20, category: 'sauces', photo: '1000_islands.png')
FoodItem.create(name: 'Соус Барбекю', price: 20, category: 'sauces', photo: 'bbq.png')
FoodItem.create(name: 'Соус Горчичный', price: 20, category: 'sauces', photo: 'mustard.png')
FoodItem.create(name: 'Соус Карри', price: 20, category: 'sauces', photo: 'curry-sauce.png')




FoodItem.create(name:  'Кока-Кола 0.5л', price: 100, category: 'drinks', photo: 'cola.png')
FoodItem.create(name:  'Кока-Кола Зеро 0.5л', price: 100, category: 'drinks', photo: 'cola-zero.png')
FoodItem.create(name:  'Спрайт 0.5л', price: 100, category: 'drinks', photo: 'sprite.png')
FoodItem.create(name:  'Фанта 0.5л', price: 100, category: 'drinks', photo: 'fanta.png')
FoodItem.create(name:  'Минеральная вода Перье 0.5л', price: 100, category: 'drinks', photo: 'perrier.png')
# FoodItem.create(name:  'Липтон Айс Ти Лемон', price: 100, category: 'drinks', photo: '')
# FoodItem.create(name:  'Липтон Айс Ти Зеленый чай', price: 100, category: 'drinks', photo: '')


puts "Creating rolls"




# img src="./assets/mcdonalds/big_mac.png" alt=""> -->
