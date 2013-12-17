class Order < ActiveRecord::Base
  attr_accessible :product_ids, :vehicle_id
end
