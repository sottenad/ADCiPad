class AddCarIdToYears < ActiveRecord::Migration
  def change
    add_column :years, :car_id, :integer
  end
end
