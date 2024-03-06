class ArtisansController < ApplicationController
  def artisans
    @artisans = Artisan.all
  end
end
