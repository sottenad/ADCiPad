class Car < ActiveRecord::Base
  attr_accessible :make_id, :model, :trim, :year
  belongs_to :make
end
