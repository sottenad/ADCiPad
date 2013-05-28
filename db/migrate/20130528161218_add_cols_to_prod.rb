class AddColsToProd < ActiveRecord::Migration
  def self.up
    add_attachment :products, :image_2
  end

  def self.down
    remove_attachment :products, :image_2
  end
end