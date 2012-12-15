class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :model
      t.string :trim
      t.string :make

      t.timestamps
    end
  end
end
