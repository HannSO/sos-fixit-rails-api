require 'rails_helper'

describe 'Users by Skill' do
  it 'returns a list of users who have that skill' do

    FactoryGirl.create_list(:user, 5)

    get '/skills/1/users'

    json = JSON.parse(response.body)

    expect(response).to be_success
    expect(json.length).to eq(5)

  end
end
