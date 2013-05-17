class AddImagesToManufacturers < ActiveRecord::Migration
  def self.up
    add_attachment :manufacturers, :image
  end

  def self.down
    remove_attachment :manufacturers, :image
  end
end