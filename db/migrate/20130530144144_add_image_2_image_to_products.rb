class AddImage2ImageToProducts < ActiveRecord::Migration
  def change
    add_column :products, :image_2, :string
  end
end
