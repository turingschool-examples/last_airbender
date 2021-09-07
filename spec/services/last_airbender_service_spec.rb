require 'rails_helper'

describe LastAirbenderService do
  it 'returns members of Fire Nation' do
    @mock_response = "[{\"_id\":\"5cf5679a915ecad153ab68fd\",\"allies\":[\"Ozai\"],\"enemies\":[\"Earth Kingdom\"],\"name\":\"Chan (Fire Nation admiral)\",\"affiliation\":\"Fire Nation Navy\"}]"

   allow_any_instance_of(Faraday::Connection).to receive(:get).and_return(Faraday::Response.new)
   allow_any_instance_of(Faraday::Response).to receive(:body).and_return(@mock_response)

    fire_nation = LastAirbenderService.fire_nation

    expect(fire_nation).to be_a(Array)
    expect(fire_nation.first).to have_key(:allies)
    expect(fire_nation.first).to have_key(:enemies)
    expect(fire_nation.first).to have_key(:name)
    expect(fire_nation.first).to have_key(:affiliation)
  end
end
