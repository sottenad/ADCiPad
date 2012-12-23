class AddPictureAndDescriptionAndPartsnumberToProducts < ActiveRecord::Migration
  def change
    add_column :products, :picture, :string
    add_column :products, :description, :string
    add_column :products, :partsnumber, :string
  end
end
