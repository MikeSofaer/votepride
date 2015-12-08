class IntentionsController < ApplicationController
  def create
    @race = Race.find params[:race_id]
    current_voter.choose(@race, Candidacy.find(params[:candidacy_id]))
    redirect_to @race
  end
end
