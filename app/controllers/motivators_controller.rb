class MotivatorsController < ApplicationController
  def opine
    motivator = Motivator.find(params[:motivator_id])
    current_voter.opine(motivator, params[:likingness])
    candidacy = motivator.candidacy
    redirect_to candidacy.race
  end
end
