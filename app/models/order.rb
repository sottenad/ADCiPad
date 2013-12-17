class Order < ActiveRecord::Base
  attr_accessible :product_ids, :car_id, :user_id
  
  belongs_to :car
  belongs_to :user
  has_and_belongs_to_many :products
  
end
