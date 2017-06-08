class CreateFabricsInOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :fabrics_in_orders do |t|
      t.integer :order_id
      t.integer :fabric_id

      t.timestamps

    end
  end
end
