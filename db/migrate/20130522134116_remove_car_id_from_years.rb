class RemoveCarIdFromYears < ActiveRecord::Migration
  def up
    remove_column :years, :car_id
      end

  def down
    add_column :years, :car_id, :integer
  end
end
