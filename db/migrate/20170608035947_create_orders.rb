class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.datetime :order_date
      t.string :total_price
      t.integer :user_id

      t.timestamps

    end
  end
end
