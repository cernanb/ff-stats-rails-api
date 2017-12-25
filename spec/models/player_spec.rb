require 'rails_helper'

RSpec.describe Player, type: :model do
  describe "validations" do
    it "requires a first name" do
      player = build(:player, first_name: nil)

      expect(player.valid?).to eq(false)
    end

    it "requires a last name" do
      player = build(:player, last_name: nil)

      expect(player.valid?).to eq(false)
    end

  end

  describe "associations" do
    it "belongs to a Team" do
      player = create(:player)
      team = create(:team)

      player.update(team: team)

      expect(player.team.mascot).to eq(team.mascot)
    end

  end

end
