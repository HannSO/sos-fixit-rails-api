require 'rails_helper'

describe 'Viewing jobs belonging to a user' do

  user_one = FactoryGirl.create(:user)
  user_two = FactoryGirl.create(:user)

  before(:each) do
    @job = {
      recipient_id: user_one.id,
      fixer_id: user_two.id,
      name: "A task"
    }
    @auth_headers = user_one.create_new_auth_token
    post '/jobs', @job, @auth_headers
  end

  it 'returns a job for the recipient' do
    get "/user/#{user_one.id}/jobs/recipient_of", @auth_headers
    json = JSON.parse(response.body)
    expect(response).to be_success
  end

  it 'returns a job for the fixer' do
    get "/user/#{user_one.id}/jobs/fixer_of", @auth_headers
    json = JSON.parse(response.body)
    expect(response).to be_success
  end

end
