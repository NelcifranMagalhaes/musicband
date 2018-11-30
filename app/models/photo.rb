class Photo < ApplicationRecord
	mount_uploader :image, PhotoUploader
	belongs_to :band
end
