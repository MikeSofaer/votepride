class Election < ActiveRecord::Base
  has_many :vote_plans
  has_many :races
  has_many :offices, through: :races

  def self.default
    first
  end
end
