class PagesController < ApplicationController
	
  def home
    @band = Band.first
    @artists = Artist.all
    @tours = Tour.all
    @discographies = Discography.all
  end

end
