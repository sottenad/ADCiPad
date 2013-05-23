class Year < ActiveRecord::Base
  attr_accessible :year,:image
  has_and_belongs_to_many :cars
  default_scope order('year DESC')
  has_attached_file :image,
   :styles =>{
	  thumb: '100x100>', square: '200x200#', medium: '300x300>'
  }
  
  def thumbnail
  	return self.image.url(:medium)
  end
  
  def as_json(options)
    options ||= {} #even if you provide a default, it ends up as nil
    hash = super(options.merge({:methods => :thumbnail}))
    hash
  end
  
end
