class VotePlan < ActiveRecord::Base
  belongs_to :voter
  belongs_to :election
  has_many :commitments
end
