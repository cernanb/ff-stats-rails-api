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

  end
end
