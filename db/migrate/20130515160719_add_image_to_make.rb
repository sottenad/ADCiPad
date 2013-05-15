class AddImageToMake < ActiveRecord::Migration
  def change
    add_column :makes, :image, :string
  end
end
