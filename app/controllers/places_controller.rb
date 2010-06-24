class PlacesController < ApplicationController
  # GET /places
  # GET /places.xml
  def index
    @places = Place.all
  end

  # GET /places/1
  # GET /places/1.xml
  def show
    @place = Place.find(params[:id])
  end

  # GET /places/new
  # GET /places/new.xml
  def new
    @place = Place.new
  end

  # GET /places/1/edit
  def edit
    @place = Place.find(params[:id])
  end

  # POST /places
  # POST /places.xml
  def create
    @place = Place.new(params[:place])

    if @place.save
      redirect_to(params[:return_to] || places_url, :notice => 'Place was successfully created.')
    else
      render :action => "new"
    end
  end

  # PUT /places/1
  # PUT /places/1.xml
  def update
    @place = Place.find(params[:id])

    if @place.update_attributes(params[:place])
      redirect_to(params[:return_to] || places_url, :notice => 'Place was successfully updated.')
    else
      render :action => "edit"
    end
  end

  # DELETE /places/1
  # DELETE /places/1.xml
  def destroy
    @place = Place.find(params[:id])
    @place.destroy

    redirect_to(places_url)
  end
end
