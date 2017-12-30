class Team < ApplicationRecord
  validates :city, :mascot, presence: true
end
