class RemoveYearfields < ActiveRecord::Migration
  def up
  	remove_column :cars, :year
  	remove_column :cars, :year_id
  end

  def down
    add_column :cars, :year
  	add_column :cars, :year_id

  end
end
