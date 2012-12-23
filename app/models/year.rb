class Year < ActiveRecord::Base
  attr_accessible :year
  has_many :cars
end
