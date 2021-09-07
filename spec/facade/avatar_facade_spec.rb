require 'rails_helper'

describe AvatarFacade do
	describe "characters_by_nation" do
		it "returns character data" do
			results = AvatarFacade.characters_by_nation("fire+nation")
			expect(results).to be_a(Array)
			expect(results.first).to be_a(Character)
			expect(results.count).to eq(97)
		end
	end
end