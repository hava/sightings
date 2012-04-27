class HomeController < ApplicationController
  def index
    redirect_to sightings_url
  end
end
