class AddImage2ToProducts < ActiveRecord::Migration
  def self.up
    add_attachment :categories, :image_2
  end

  def self.down
    remove_attachment :categories, :image_2
  end
end