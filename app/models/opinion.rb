class Opinion < ActiveRecord::Base
  belongs_to :motivator
  belongs_to :voter
end
