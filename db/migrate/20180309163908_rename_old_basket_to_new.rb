class RenameOldBasketToNew < ActiveRecord::Migration[5.1]
  def change
    rename_table :baskets, :order_items
  end
end
