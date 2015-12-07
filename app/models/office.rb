class Office < ActiveRecord::Base
  has_many :races
  has_many :candidates, through: :candidacies
end
