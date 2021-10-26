require 'rails_helper'

RSpec.describe Member do
  it "exists and has attributes with photo" do
    data = [
      {
          "_id": "5cf5679a915ecad153ab6906",
          "allies": [
              "Ty Lee"
          ],
          "enemies": [
              "Appa"
          ],
          "photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819",
          "name": "Circus master",
          "affiliation": "Fire Nation circus"
      }
    ]

    response = AirbenderFacade.get_members("Fire Nation")

    expect(response).to be_an Array
    expect(response.count).to eq(20)

    second_object = response.second

    expect(second_object).to be_a Member
    expect(second_object.name).to eq(data[0][:name])
    expect(second_object.allies).to eq(data[0][:allies])
    expect(second_object.enemies).to eq(data[0][:enemies])
    expect(second_object.photo).to eq(data[0][:photoUrl])
  end
end
