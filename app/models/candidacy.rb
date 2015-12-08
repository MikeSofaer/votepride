class Candidacy < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :race
  has_many :commitments
  has_many :motivators
  has_many :intentions
end
