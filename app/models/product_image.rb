class ProductImage < ActiveRecord::Base
  attr_accessible :image, :product_id
  has_attached_file :image,
   :styles =>{
	  thumb: '100x100>', square: '200x200#', medium: '300x300>'
  }
  belongs_to :product
end
