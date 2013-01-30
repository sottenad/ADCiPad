class DropSubcategoriesTable < ActiveRecord::Migration
  def up
  drop_table :subcategories
  end

  def down
  end
end
