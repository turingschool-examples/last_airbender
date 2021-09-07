require "rails_helper"

RSpec.describe Member do
  it "exists" do
    attrs = {
      name: "Green Dragon",
      photoUrl: "photoURL",
      allies: ["Aang"],
      enemies: ["Poachers"],
      affiliation: "Fire Nation"
    }

    member = Member.new(attrs)

    expect(member).to be_a Member
    expect(member.name).to eq("Green Dragon")
    expect(member.photo).to eq("photoURL")
    expect(member.allies).to eq(["Aang"])
    expect(member.enemies).to eq(["Poachers"])
    expect(member.affiliation).to eq("Fire Nation")
  end
end
