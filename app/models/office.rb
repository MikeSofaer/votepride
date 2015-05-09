class Office < ActiveRecord::Base
  has_many :candidacies
  has_many :candidates, through: :candidacies

  def candidates_in(election)
    candidacies.where(election: election).map(&:candidate)
  end
end
