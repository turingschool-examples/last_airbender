require 'rails_helper'

RSpec.describe AirbenderFacade do
  describe "class methods" do
    describe ".members_by_nation" do
      it "returns an array of the nation members as member objects" do
        members = AirbenderFacade.members_by_nation('fire_nation')

        expect(members).to be_an Array
        expect(members.first).to be_a Character
        expect(members.size).to eq(97)
      end
    end
  end
end
