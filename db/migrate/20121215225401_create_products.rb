class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :category_id
      t.integer :price
      t.string :car_id

      t.timestamps
    end
  end
end
