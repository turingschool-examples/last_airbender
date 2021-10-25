require 'rails_helper'

RSpec.describe AirbenderService do

  it "can get all members details" do
    response = AirbenderService.request("/api/v1/characters?affiliation=Fire+Nation")

    expect(response).to be_a Hash

    expect(response).to have_key :name
    expect(response[:name]).to be_a String

    expect(response).to have_key :photoUrl
    expect(response[:photoUrl]).to be_a String

    expect(response).to have_key :allies
    expect(response[:allies]).to be_a Array

    expect(response).to have_key :enemies
    expect(response[:enemies]).to be_an Array
  end
end
