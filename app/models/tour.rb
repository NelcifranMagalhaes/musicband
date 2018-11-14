class Tour < ApplicationRecord
	validates :name,presence: true
	validates :description,presence: true
	validates :date_show,presence: true
	mount_uploader :tour_photo, PhotoUploader

end
