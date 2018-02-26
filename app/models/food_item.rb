class FoodItem < ApplicationRecord
  validates :name, :price, :photo, :category, presence: true
end
