require 'rails_helper'

describe 'Skills by User' do
  it 'returns a list of skills for a user' do

    user = FactoryGirl.create(:user_with_skills)

    get "/users/#{user.id}"

    json = JSON.parse(response.body)

    expect(response).to be_success
    expect(json['user']['email']).to eq(user.email)
    expect(json['user']['skills'][0]['skill']['id']).to eq(user.skills.first.id)
    expect(json['user']['skills'][0]['skill']['name']).to eq(user.skills.first.name)
    expect(json.length).to eq(1)
    expect(json['user']['skills'].length).to eq(user.skills.length)


  end
end
