require 'rails_helper'

RSpec.describe CharacterService do
  before :each do
    @service = CharacterService.new
  end

  describe 'instance methods' do
    describe '#affiliation' do
     
      expect(@service.affiliation('Fire Nation')).to have_key(:allies)
      expect(@service.affiliation('Fire Nation')).to have_key(:enemies)
      expect(@service.affiliation('Fire Nation')).to have_key(:name)
    end
  end
end