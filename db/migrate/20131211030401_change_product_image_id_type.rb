class ChangeProductImageIdType < ActiveRecord::Migration
  def self.up
   change_column :product_images, :product_id, 'integer USING CAST(product_id AS integer)'
  end

  def self.down
   change_column :product_images, :product_id, :string
  end
end
