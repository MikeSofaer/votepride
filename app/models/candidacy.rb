class Candidacy < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :election
  belongs_to :office
  has_many :commitments
end
