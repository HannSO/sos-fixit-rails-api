require 'rails_helper'

describe 'Users for Skill' do

  it 'returns a list of users who have that skill' do

    skill = FactoryGirl.create(:skill_with_users)

    get "/skills/#{skill.id}"

    json = JSON.parse(response.body)

    expect(response).to be_success
    expect(json['skill']['name']).to eq(skill.name)
    expect(json['skill']['users'][0]['user']['name']).to eq(skill.users.first.name)
    expect(json.length).to eq(1)
    expect(json['skill']['users'].length).to eq(skill.users.length)

  end
end
