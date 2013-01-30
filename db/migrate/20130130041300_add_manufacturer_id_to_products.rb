class AddManufacturerIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :manufacturer_id, :string
  end
end
