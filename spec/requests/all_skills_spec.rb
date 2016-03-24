require 'rails_helper'

describe 'Getting Skills' do
  it 'returns all the skills' do

    skills = FactoryGirl.create_list(:skill,3)

    get '/skills'

    json = JSON.parse(response.body)
    expect(response).to be_success
    expect(json.length).to eq(3)
    expect(json[0]['skill']['name']).to eq(skills.first.name)

  end
end
