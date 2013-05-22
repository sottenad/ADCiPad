class AddImagesToYears < ActiveRecord::Migration
  def change
  	add_attachment :years, :image
  end
end
