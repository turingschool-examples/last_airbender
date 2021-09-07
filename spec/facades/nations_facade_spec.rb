
require 'rails_helper'

describe NationsFacade do
  context "instance methods" do
    it "returns nations matching selections", :vcr do
      selection = NationsFacade.find_by_nation('Fire Nation')
      nations_data = selection.first
      expect(selection).to be_an Array
      expect(nations_data.name).to be_a(String)
    end
  end
end