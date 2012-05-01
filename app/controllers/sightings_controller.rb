class SightingsController < ApplicationController
  def index
    @sightings = Sighting.all
  end

  def new
    @sighting = Sighting.new
    @sighting.location = Location.new
  end

  def create
    @sighting = Sighting.new(params[:sighting])

    respond_to do |format|
      if @sighting.save
        format.html { redirect_to(@sighting,
                                  :notice => 'Sighting was successfully created.') }
        format.json { render :json => @sighting,
                             :status => :created, :location => @sighting }
      else
        format.html { render :action => "new" }
        format.json { render :json => @sighting.errors,
                             :status => :unprocessable_entity }
      end
    end
  end

  def show
    @sighting = Sighting.find(params[:id])
  end
end
