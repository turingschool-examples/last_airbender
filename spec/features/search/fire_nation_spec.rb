require 'rails_helper'

require 'rails_helper'

RSpec.describe "As a visitor" do
	describe "When I search for a characters by nation," do
    before :each do 
      visit root_path

			select "Fire Nation", :from => "nation"

			click_button "Search For Members"
    end

    it 'is on the right page' do 
      expect(current_path).to eq(search_path)
    end 

		it 'can display total characters' do 
			expect(page).to have_content("Total Characters: 97")
		end

		it 'can display characters and attributes' do 
			expect(page).to have_content("Name: Azula")
			expect(page).to have_content("Allies: Fire Nation")
			expect(page).to have_content("Enemies: Iroh, Zuko, Kuei, Long Feng, Mai, Ty Lee, Ursa")
			expect(page).to have_content("Affiliation: Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
		end 
	end
end