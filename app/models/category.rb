class Category < ActiveRecord::Base
  attr_accessible :name, :parent_id, :image
  has_many :products
  acts_as_nested_set
  
  
  has_attached_file :image,
   :styles =>{
	  thumb: '100x100>', square: '200x200#', medium: '300x300>'
  }
end
