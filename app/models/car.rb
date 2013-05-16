class Car < ActiveRecord::Base
  attr_accessible :make_id, :model, :trim, :year_id, :image
  belongs_to :make
  has_and_belongs_to_many :products
  belongs_to :year
  mount_uploader :image, ImageUploader
end
