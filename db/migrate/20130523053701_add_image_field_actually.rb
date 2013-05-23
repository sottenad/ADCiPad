class AddImageFieldActually < ActiveRecord::Migration
  def up
  	add_column :categories, :image, :string
  	add_column :manufacturers, :image, :string
  	add_column :years, :image, :string
  end

  def down
  end
end
