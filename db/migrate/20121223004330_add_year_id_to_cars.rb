class AddYearIdToCars < ActiveRecord::Migration
  def change
    add_column :cars, :year_id, :integer
  end
end
