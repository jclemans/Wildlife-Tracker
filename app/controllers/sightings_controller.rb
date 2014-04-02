class SightingsController < ApplicationController

  def index
    @sightings = Sighting.all
    render('/sightings/index.html.erb')
  end

  def create
    @sighting = Sighting.create(params[:sighting])
    redirect_to("/animals/#{@sighting.animal.id}")
  end

  def sort
    @sightings = Sighting.all
    @start_date = params['sighting']['start_date'].to_datetime
    @end_date = params['sighting']['end_date'].to_datetime
    @sorted_sightings = Sighting.where(:created_at => @start_date..@end_date)
    render("/sightings/index.html.erb")
  end

  def edit
    @regions = Region.all
    @sighting = Sighting.find(params[:id])
    render('/sightings/edit.html.erb')
  end

  def update
    @sighting = Sighting.find(params[:id])
    if @sighting.update(params[:sighting])
      redirect_to("/animals/#{@sighting.animal.id}")
    else
      render('sightings/edit.html.erb')
    end
  end
end
