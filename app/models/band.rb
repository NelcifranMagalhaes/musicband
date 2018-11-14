class Band < ApplicationRecord
	validates :name,presence: true
	validates :description,presence: true
	mount_uploader :band_photo, PhotoUploader
end
