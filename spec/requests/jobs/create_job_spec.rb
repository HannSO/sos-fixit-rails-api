require 'rails_helper'

describe 'Creating a new job' do

  user_one = FactoryGirl.create(:user)
  user_two = FactoryGirl.create(:user)

  before do
    @job = {
      recipient_id: user_one.id,
      fixer_id: user_two.id,
      name: "A task"
    }
  end

  it 'creates a new job between two users' do
    @auth_headers = user_one.create_new_auth_token
    post '/jobs', @job, @auth_headers
    json = JSON.parse(response.body)
    expect(response).to be_success
    expect(Job.first.name).to eq @job[:name]
  end

end
