class RacesController < ApplicationController
  def show
    @race = Race.find(params[:id])
    @office = @race.office
    if current_voter
      @intention = current_voter.intention_for(@race)
    end
  end
end
