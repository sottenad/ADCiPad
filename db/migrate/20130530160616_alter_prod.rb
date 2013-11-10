class AlterProd < ActiveRecord::Migration
  def up
	remove_column :products, :image_file_name			
	remove_column :products, :image_content_type			
	remove_column :products, :image_file_size			
	remove_column :products, :image_updated_at			
	remove_column :products, :image_2_file_name			
	remove_column :products, :image_2_content_type			
	remove_column :products, :image_2_file_size			
	remove_column :products, :image_2_updated_at			
	remove_column :products, :image_2
	remove_column :products, :image
	
	
  end

  def down
  end
end
