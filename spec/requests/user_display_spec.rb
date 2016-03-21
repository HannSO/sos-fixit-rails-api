require 'rails_helper'

describe 'Skills-User API' do
  it 'returns a list of users who have that skill' do
    FactoryGirl.create_list(:user, 5)

    get '/api/v1/skills/2/users'

    json = JSON.parse(response.body)

    expect(response).to be_success
    expect(json['users'].length).to eq(5)

  end
end
