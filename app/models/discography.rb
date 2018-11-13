class Discography < ApplicationRecord
	validates :name,presence: true
	validates :date_rise,presence: true
	validates :description,presence: true
end
