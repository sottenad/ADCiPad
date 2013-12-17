class AddHabtmOrders < ActiveRecord::Migration
  def up
  	create_table :orders_products do |t|
      t.belongs_to :order
      t.belongs_to :product
    end
  end

  def down
  	drop_table :orders_products
  end
end
