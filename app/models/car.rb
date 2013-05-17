class Car < ActiveRecord::Base
  attr_accessible :make_id, :model, :trim, :year_id, :image
  belongs_to :make
  has_and_belongs_to_many :products
  belongs_to :year
  
  has_attached_file :image,
   :styles =>{
	  thumb: '100x100>', square: '200x200#', medium: '300x300>'
  }

end
