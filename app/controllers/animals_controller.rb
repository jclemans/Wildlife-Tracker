class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
    render('animals/index.html.erb')
  end

  def show
    @regions = Region.all
    @animal = Animal.find(params[:id])
    @sightings = @animal.sightings
    render('animals/show.html.erb')
  end

  def create
    @animal = Animal.create(params[:animal])
    redirect_to('/animals')
  end

  def edit
    @animal = Animal.find(params[:id])
    render('animals/edit.html.erb')
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.update(params[:animal])
      redirect_to('/animals')
    else
      render('animals/edit.html.erb')
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirect_to('/animals')
  end

end
