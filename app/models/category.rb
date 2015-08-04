class Category < ActiveRecord::Base
	has_many :photos
	mount_uploader :image, ImageUploader
end
