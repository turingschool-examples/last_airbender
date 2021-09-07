require 'rails_helper'

describe AvatarService do
	describe "return_results" do
		it "returns json of results" do

			search = AvatarService.get_results("Fire+Nation")
			expect(search).to be_a Array
			member_data = search.first

			expect(member_data).to have_key :name
			expect(member_data[:name]).to be_a(String)

			expect(member_data).to have_key :allies
			expect(member_data[:allies]).to be_a(Array)

			expect(member_data).to have_key :enemies
			expect(member_data[:enemies]).to be_a(Array)

			expect(member_data).to have_key :affiliation
			expect(member_data[:affiliation]).to be_a(String)
		end
	end
end