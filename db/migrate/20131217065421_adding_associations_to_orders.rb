class AddingAssociationsToOrders < ActiveRecord::Migration
  def up
  	remove_column :orders, :vehicle_id
  	
  	add_column :orders, :car_id, :integer
    add_index :orders, :car_id
    
  end

  def down
  	add_column :orders, :vehicle_id, :integer
  	
  	remove_column :orders, :car_id
  end
end
