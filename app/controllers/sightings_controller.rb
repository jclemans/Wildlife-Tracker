class SightingsController < ApplicationController

  def create
    @animal = Animal.find(params[:id])
    @region = Region.where(:name => params[:name]).first
    @sighting = Sighting.create(:animal_id => @animal.id,
                                :region_id => @region.id)

  end



end
