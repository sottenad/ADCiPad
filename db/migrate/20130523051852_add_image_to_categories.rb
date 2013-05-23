class AddImageToCategories < ActiveRecord::Migration
  def self.up
    add_attachment :categories, :image
  end

  def self.down
    remove_attachment :categories, :image
  end
end
