class AddCarsYears < ActiveRecord::Migration
  def up
  	create_table :cars_years do |t|
	  t.integer :car_id
	  t.integer :year_id
	end
  end

  def down
  	destroy_table :cars_years
  end
end
