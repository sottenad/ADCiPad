class Car < ActiveRecord::Base
  attr_accessible :make_id, :model, :trim, :image, :year_ids
  belongs_to :make
  has_and_belongs_to_many :products
  has_and_belongs_to_many :years
  has_attached_file :image,
   :styles =>{
	  thumb: '100x100>', square: '200x200#', medium: '300x300>'
  }
  
  def thumb_url
        image.url(:medium)
    end
    
#def as_json(options={})
#  super(options.merge(:include => :thumb_url))
#end



end
