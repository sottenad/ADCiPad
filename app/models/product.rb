class Product < ActiveRecord::Base
  attr_accessible :category_id, :name, :price , :car_ids, :partsnumber, :image, :description, :youtube_code, :manufacturer_id
  belongs_to :category
  has_and_belongs_to_many :cars
  has_one :manufacturer
  mount_uploader :image, ImageUploader

  require 'set'

  def childrenChecked (make_id, year_id)

    makeChildren = Car.where(:make_id => make_id.to_s(), :year_id => year_id)
    if makeChildren.length >0
       selectedCars = self.car_ids
       totalCars = makeChildren.all(:select => :id).collect(&:id)
       return selectedCars.align(totalCars)
    end
  end
  def yearChecked (year_id)
    yearChildren = Car.where(:year_id => year_id.to_s())
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
