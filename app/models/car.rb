class Car < ActiveRecord::Base
  attr_accessible :make_id, :model, :trim, :year_id
  belongs_to :make
  has_and_belongs_to_many :products
  belongs_to :year
end
