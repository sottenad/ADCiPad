class CreateCarsProducts < ActiveRecord::Migration
  def up
  	create_table :cars_products do |t|
  		t.integer :car_id
  		t.integer :product_id
  	end
  end

  def down
  end
end
