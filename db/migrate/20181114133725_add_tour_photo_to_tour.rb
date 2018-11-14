class AddTourPhotoToTour < ActiveRecord::Migration[5.2]
  def change
    add_column :tours, :tour_photo, :string
  end
end
