class ProductImage < ActiveRecord::Base
  attr_accessible :image, :product_id
  belongs_to :product
  has_attached_file :image,
   :styles =>{
	  thumb: '100x100>', square: '200x200#', medium: '300x300>'
  }

  def image_url
  	image.url(:medium)
  end

end
