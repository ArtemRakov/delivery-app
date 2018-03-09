class Order < ApplicationRecord
  has_one :order_item
  has_many :food_items, through: :order_item

  belongs_to :user, class_name: "User", foreign_key: "user_id", optional: true
  belongs_to :delivery_guy, class_name: "User", foreign_key: "delivery_guy_id"

  enum status: { submitted: 0, approved: 1, delivered: 2, rejected: 3 }

end
