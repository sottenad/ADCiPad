class Make < ActiveRecord::Base
  attr_accessible :name
  has_many :cars

  def hasCarsWithYear(year_id, make_id)
    carsWithProd = Car.where(:make_id => make_id.to_s, :year_id => year_id.to_s)
    if carsWithProd.count > 0
      return true
    end
    return false
  end

end
