class AddImagesToFoodItems < ActiveRecord::Migration[5.1]
  def change
    add_column :food_items, :photo, :string
  end
end
