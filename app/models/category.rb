class Category < ActiveRecord::Base
	has_many :photos
	belongs_to :type
	mount_uploader :image, ImageUploader
end
