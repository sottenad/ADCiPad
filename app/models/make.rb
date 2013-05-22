class Make < ActiveRecord::Base
  attr_accessible :name, :image
  has_many :cars
  has_attached_file :image,
   :styles =>{
	  thumb: '100x100>', square: '200x200#', medium: '300x300>'
  }

  def hasCarsWithYear(yearID, makeID)
  	#Car.includes(:years).where(years:{id: year_id}, make_id: make_id )
    carsWithProd = Car.includes(:years).where(years:{id: yearID}, make_id: makeID.to_s())
    if carsWithProd.count > 0
      return true
    end
    return false
  end

end
