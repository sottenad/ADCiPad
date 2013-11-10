class AddProductIdToProductImages < ActiveRecord::Migration
  def change
    add_column :product_images, :product_id, :string
  end
end
