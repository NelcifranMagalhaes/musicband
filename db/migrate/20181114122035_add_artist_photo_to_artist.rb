class AddArtistPhotoToArtist < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :artist_photo, :string
  end
end
