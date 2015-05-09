class Commitment < ActiveRecord::Base
  belongs_to :vote_plan
  belongs_to :candidacy
end
