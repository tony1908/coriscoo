class Photo < ActiveRecord::Base
	belongs_to :category
	belongs_to :kind
	mount_uploader :photo, PhotoUploader
end
