class PrepareCategoriesForNesting < ActiveRecord::Migration
  def up
  	drop_table :categories

    create_table :categories do |t|
      t.string :name
      t.integer :parent_id
      t.integer :lft
      t.integer :rgt
      t.integer :depth # this is optional.
    end
  end
  

  def down
  end
end
