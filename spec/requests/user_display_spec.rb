require 'rails_helper'

describe 'Users by Skill' do

  it 'returns a list of users who have that skill' do

    skill = FactoryGirl.create(:skill)

    get "/skills/#{skill.id}"

    json = JSON.parse(response.body)

    expect(response).to be_success
    expect(json['skill']['name']).to eq(skill.name)
    expect(json['skill']['users']).to eq(skill.users)
    p json['skill']['users']
    expect(json.length).to eq(1)

  end
end
