class CreateBaskets < ActiveRecord::Migration[5.1]
  def change
    create_table :baskets do |t|
      t.references :order, foreign_key: true
      t.references :food_item, foreign_key: true

      t.timestamps
    end
  end
end
