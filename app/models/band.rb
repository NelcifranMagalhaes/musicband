class Band < ApplicationRecord
	validates :name,presence: true
	validates :description,presence: true
	has_many :photos, inverse_of: :band,dependent: :destroy
	accepts_nested_attributes_for :photos, reject_if: :all_blank, allow_destroy: true
end
