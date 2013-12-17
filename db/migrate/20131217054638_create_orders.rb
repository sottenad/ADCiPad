class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :vehicle_id
      t.string :product_ids

      t.timestamps
    end
  end
end
