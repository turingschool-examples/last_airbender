require 'rails_helper'

RSpec.describe AirbenderService do

  it "can get all members details" do
    response = AirbenderService.members("Fire+Nation")

    expect(response).to be_a Array

    character = response.first
    expect(character).to be_a Hash

    expect(character).to have_key :name
    expect(character[:name]).to be_a String

    expect(character).to have_key :allies
    expect(character[:allies]).to be_a Array

    expect(character).to have_key :enemies
    expect(character[:enemies]).to be_an Array
  end

  it "can get members with photos" do
    response = AirbenderService.members("Fire+Nation")

    expect(response).to be_a Array

    character = response.second
    expect(character).to be_a Hash

    expect(character).to have_key :name
    expect(character[:name]).to be_a String

    expect(character).to have_key :photoUrl
    expect(character[:photoUrl]).to be_a String

    expect(character).to have_key :allies
    expect(character[:allies]).to be_a Array

    expect(character).to have_key :enemies
    expect(character[:enemies]).to be_an Array
  end
end
