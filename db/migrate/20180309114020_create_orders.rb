class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :total
      t.integer :status, default: 0
      t.time :start_time
      t.time :end_time
      t.integer :delivery_guy_id

      t.timestamps
    end
  end
end
