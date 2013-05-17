class AddImagesToMakes < ActiveRecord::Migration
  def self.up
    add_attachment :makes, :image
  end

  def self.down
    remove_attachment :makes, :image
  end
end