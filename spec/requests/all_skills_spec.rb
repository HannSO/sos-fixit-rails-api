require 'rails_helper'

describe 'Getting Skills' do
  it 'returns all the skills' do

    Skill.create(name: 'plumbing')
    Skill.create(name: 'bike-repair')
    get '/skills'
    json = JSON.parse(response.body)
    expect(response).to be_success
    expect(json.length).to eq(2)

  end
end
