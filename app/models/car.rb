class Car < ActiveRecord::Base
  attr_accessible :make_id, :model, :trim, :year
  belongs_to :make
  has_and_belongs_to_many :products
end
