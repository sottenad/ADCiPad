class Make < ActiveRecord::Base
  attr_accessible :name, :image
  has_many :cars
  has_attached_file :image,
   :styles =>{
	  thumb: '100x100>', square: '200x200#', medium: '300x300>'
  }

  def hasCarsWithYear(year_id, make_id)
    carsWithProd = Car.where(:make_id => make_id.to_s, :year_id => year_id.to_s)
    if carsWithProd.count > 0
      return true
    end
    return false
  end

end
