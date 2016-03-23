require 'rails_helper'

describe 'Skills by User' do
  it 'returns a list of skills for a user' do

    FactoryGirl.create_list(:skill, 5)

    get '/users/1/skills'

    json = JSON.parse(response.body)

    expect(response).to be_success
    expect(json.length).to eq(5)

  end
end
