require 'rails_helper'

describe NationsService do
  context "instance methods" do
    it "can make API call to database", :vcr do
      nation = 'Fire+Nation'
      query = NationsService.call_db("/api/v1/characters?affiliation=#{nation}&perPage=150&page=1")
      nation_data = query.first
      expect(query).to be_a Array
      expect(nation_data).to be_a Hash
      check_hash_structure(nation_data, :name, String)
    end
  end
end