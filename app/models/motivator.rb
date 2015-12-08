class Motivator < ActiveRecord::Base
  belongs_to :candidacy
  belongs_to :vote_plan
  has_many :opinions
end
