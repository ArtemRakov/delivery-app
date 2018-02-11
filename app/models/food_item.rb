class FoodItem < ApplicationRecord
  validates :name, :price, presence: true
end
