class PagesController < ApplicationController
	
  def home
    @band = Band.first
    @artists = Artist.order(created_at: :asc).all
    @tours = Tour.order(date_show: :desc).all
    @discographies = Discography.all
  end

end
