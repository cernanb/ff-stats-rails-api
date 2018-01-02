require 'rails_helper'

RSpec.describe Team, type: :model do
  describe "validations" do
    it "requires a city" do
      team = build(:team, city: nil)

      expect(team.valid?).to eq(false)
    end
    
    it "requires a mascot" do
      team = build(:team, mascot: nil)

      expect(team.valid?).to eq(false)
    end
  end

  describe "associations" do
    it "has many players" do
      team = create(:team)

      team.players.create(first_name: "Jerry", last_name: "Rice")
      team.players.create(first_name: "Dallas", last_name: "Clark")

      expect(team.players.size).to eq(2)
    end
  end
end
