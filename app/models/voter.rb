class Voter < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :intentions

  def opine(motivator, likingness)
    p = Opinion.find_or_initialize_by(voter: self, motivator: motivator)
    p.likingness = likingness
    p.save!
  end

  def intention_for(race)
    Intention.find_by(race: race, voter: self) || Intention.new(race: race, voter: self)
  end

  def choose(race, candidacy)
    intention = intention_for(race)
    intention.candidacy = candidacy
    intention.save!
  end
end
