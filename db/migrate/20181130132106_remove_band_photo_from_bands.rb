class RemoveBandPhotoFromBands < ActiveRecord::Migration[5.2]
  def change
    remove_column :bands, :band_photo, :string
  end
end
