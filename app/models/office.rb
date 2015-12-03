class Office < ActiveRecord::Base
  has_many :candidacies
  has_many :candidates, through: :candidacies

  def candidacies_for(election)
    candidacies.where(election: election)
  end
end
