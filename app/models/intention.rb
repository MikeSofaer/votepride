class Intention < ActiveRecord::Base
  belongs_to :voter
  belongs_to :candidacy
  belongs_to :race
end
