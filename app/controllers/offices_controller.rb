class OfficesController < ApplicationController
  def show
    @election = Election.find(params[:election_id])
    @office = Office.find(params[:id])
  end
end
