class Order < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: "user_id"
  belongs_to :delivery_guy, class_name: "User", foreign_key: "delivery_guy_id"
end
