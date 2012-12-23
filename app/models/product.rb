class Product < ActiveRecord::Base
  attr_accessible :category_id, :name, :price , :car_ids
  belongs_to :category
  has_and_belongs_to_many :cars

  require 'set'
  def childrenChecked (make_id)

    makeChildren = Car.where(:make_id => make_id.to_s())
    if makeChildren.length >0
       selectedCars = self.car_ids
       totalCars = makeChildren.all(:select => :id).collect(&:id)
       puts "/////////////selected:" +selectedCars.to_s()
       puts "/////////////total:" +totalCars.to_s()

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
