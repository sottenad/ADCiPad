class ChangeTimestapms < ActiveRecord::Migration
  def up
    create_table :cars_products, :id => false do |t|
      t.integer :car_id
      t.integer :product_id
      t.references :car, :product
    end
    add_index :cars_products, [:car_id, :product_id]
  end

  def down
  end
end
