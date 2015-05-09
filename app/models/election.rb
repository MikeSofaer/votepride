class Election < ActiveRecord::Base
  has_many :candidacies
  has_many :vote_plans
  has_many :offices, through: :candidacies

  def self.default
    first
  end
end
