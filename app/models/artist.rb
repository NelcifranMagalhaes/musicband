class Artist < ApplicationRecord
	validates :name,presence: true
	validates :position,presence: true
	mount_uploader :artist_photo, PhotoUploader

end
