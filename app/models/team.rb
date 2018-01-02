class Team < ApplicationRecord
  validates :city, :mascot, presence: true
  has_many :players
end
