class Car < ActiveRecord::Base
  attr_accessible :make_id, :model, :trim, :year_id, :image
  belongs_to :make
  has_and_belongs_to_many :products
  belongs_to :year
  #mount_uploader :image, ImageUploader
  has_attached_file :image, :styles =>{
	  :styles => { thumb: '100x100>', square: '200x200#', medium: '300x300>'}
  }

  attr_accessor :image_file_name
  attr_accessor :image_content_type
  attr_accessor :image_file_size
  attr_accessor :image_updated_at
end
