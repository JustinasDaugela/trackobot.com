class Arena < ActiveRecord::Base
  paginates_per 15

  belongs_to :hero
  belongs_to :user

  has_many :results

  validates_presence_of :hero_id, :user_id

  def wins
    results.wins
  end

  def losses
    results.losses
  end
end
