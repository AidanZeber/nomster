class PhotoController < ApplicationController
  def create 
    @place = Place.find(params[:place_id])
    @photo = @place.photo.create(photo_params)
    redirect_to place_path(@place)
  end

  private 

  def photo_params 
    parmas.require(:photo).permit(:caption, :picture)
  end
end

