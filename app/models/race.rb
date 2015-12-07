class Race < ActiveRecord::Base
  belongs_to :election
  belongs_to :office
  has_many :candidacies
  has_many :intentions
end
