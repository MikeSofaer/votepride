class Voter < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :vote_plans

  def opine(motivator, likingness)
    p = Opinion.find_or_create_by(voter: self, motivator: motivator)
    p.likingness = likingness
    p.save!
  end
end
