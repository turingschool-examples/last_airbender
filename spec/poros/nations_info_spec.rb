require 'rails_helper'

RSpec.describe NationsInfo do
  it 'exists' do
    # represents the info on the right of the = sign
    attrs = {
  :allies=>["Azula"],
  :enemies=>["Iroh"],
  :photoUrl=> "https://vignette.wikia.nocookie.net/avatar/images/b/bc/Azula%27s_ship_captain.png/revision/latest?cb=20130625131841",
  :name=>"Azula's ship captain",
  :affiliation=>"Fire Nation Navy"
             }

    nation = NationsInfo.new(attrs)
    expect(nation).to be_a NationsInfo
    expect(nation).to have_attributes(
         # represents the info on the left of the = sign
     {
  :allies=>["Azula"],
  :enemies=>["Iroh"],
  :photo=> "https://vignette.wikia.nocookie.net/avatar/images/b/bc/Azula%27s_ship_captain.png/revision/latest?cb=20130625131841",
  :name=>"Azula's ship captain",
  :affiliation=>"Fire Nation Navy"
             })
  end
end