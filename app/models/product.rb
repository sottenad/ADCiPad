class Product < ActiveRecord::Base
  attr_accessible :category_id, :name, :price , :car_ids, :partsnumber, :image, :description, :youtube_code, :manufacturer_id, :image_2
  belongs_to :category
  has_and_belongs_to_many :cars
  has_one :manufacturer
  has_attached_file :image,
   :styles =>{
	  thumb: '100x100>', square: '200x200#', medium: '300x300>'
  }
  has_attached_file :image_2,
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

  require 'set'

  def childrenChecked (makeID, yearID)

    makeChildren = Car.includes(:years).where(years:{id: yearID}, make_id: makeID.to_s())
    if makeChildren.length >0
       selectedCars = self.car_ids
       totalCars = makeChildren.all(:select => :id).collect(&:id)
       return selectedCars.align(totalCars)
    end
  end
  
  def yearChecked (year_id)
    yearChildren = Car.includes(:years).where(years:{id: year_id})
    if yearChildren.length > 0
      selectedCars = self.car_ids
      totalCars = yearChildren.all(:select => :id).collect(&:id)
      return selectedCars.align(totalCars)

    end
  end
end

class Array
  def align(other)
    if pos = index(other.first)
      other.size == 1 || slice(pos..-1).align(other.drop(1))
    end
  end
end
