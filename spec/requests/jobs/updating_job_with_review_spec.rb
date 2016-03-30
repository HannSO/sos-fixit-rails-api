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
    @update = {
      id: Job.first.id,
      review: "A nice review",
      rating: 5
    }
  end

  it 'allows a user to update a job' do
    patch "/jobs/#{Job.first.id}", @update, @auth_headers
    json = JSON.parse(response.body)
    expect(response).to be_success
    expect(Job.first.review).to eq 'A nice review'
    expect(Job.first.rating).to eq 5

  end

end
