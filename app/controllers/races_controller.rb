class RacesController < ApplicationController
  def show
    @race = Race.find(params[:id])
    @office = @race.office
  end
end
