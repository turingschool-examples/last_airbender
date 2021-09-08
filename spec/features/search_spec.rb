require 'rails_helper'

RSpec.describe 'welcome page search' do
  it 'user can select from existing field and search for members' do
    VCR.use_cassette('search_characters') do
      search = 'Fire Nation'
      members = MemberFacade.create_members(search)

      visit '/'

      page.select search, from: :nation
      click_on 'Search For Members'

      expect(current_path).to eq('/search')

      expect(members.count).to eq(25)
      expect(page).to have_content(members.count)

      first_member = members[0]

      expect(page).to have_content(first_member.name)
      expect(page).to have_content(first_member.affiliation)
      expect(page).to have_content(first_member.enemies[0])
      expect(page).to have_content(first_member.allies[0])
      expect(page).to have_content(first_member.photo)
    end
  end
end
