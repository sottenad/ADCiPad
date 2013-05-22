class RemoveCarsYearsTable < ActiveRecord::Migration
  def up
  	drop_table :cars_years
  end

  def down
  end
end
