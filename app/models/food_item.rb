class FoodItem < ApplicationRecord
  has_many :order_items
  validates :name, :price, :photo, :category, presence: true
end
