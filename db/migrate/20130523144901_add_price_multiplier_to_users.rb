class AddPriceMultiplierToUsers < ActiveRecord::Migration
  def change
    add_column :users, :price_multiplier, :integer
  end
end
