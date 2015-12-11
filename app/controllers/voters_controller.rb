class VotersController < ApplicationController
  def show
    @voter = Voter.find params[:id]
  end
end
