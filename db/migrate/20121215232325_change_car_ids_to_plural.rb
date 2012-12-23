class ChangeCarIdsToPlural < ActiveRecord::Migration
  def up
    rename_column :products, :car_id, :car_ids
  end

  def down
  end
end
